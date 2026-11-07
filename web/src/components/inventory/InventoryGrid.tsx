import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory, SlotWithItem } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight, isSlotWithItem } from '../../helpers';
import { useAppDispatch, useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';
import { Items } from '../../store/items';
import useNuiEvent from '../../hooks/useNuiEvent';
import { closeTooltip } from '../../store/tooltip';
import { Locale } from '../../store/locale';

const PAGE_SIZE = 30;

const InventoryGrid: React.FC<{
  inventory: Inventory;
  onSelect?: (item: SlotWithItem | undefined, inventoryType: Inventory['type']) => void;
  selectedSlot?: { slot: number; inventoryType: Inventory['type'] };
}> = ({ inventory, onSelect, selectedSlot }) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );
  const [page, setPage] = useState(0);
  const [search, setSearch] = useState('');
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const dispatch = useAppDispatch();
  const isBusy = useAppSelector((state) => state.inventory.isBusy);
  const isPlayerInventory = inventory.type === 'player';
  const hasItems = inventory.items.some((item) => isSlotWithItem(item));
  const query = search.trim().toLocaleLowerCase();
  const matchingItems = query
    ? inventory.items
        .filter((item) => {
          if (!isSlotWithItem(item)) return false;
          const itemData = Items[item.name];
          return [item.name, itemData?.label, item.metadata?.label, item.metadata?.description]
            .filter(Boolean)
            .some((value) => String(value).toLocaleLowerCase().includes(query));
        })
    : [];
  const visibleItems = query
    ? [...matchingItems, ...inventory.items.filter((item) => !isSlotWithItem(item))].slice(0, PAGE_SIZE)
    : inventory.items.slice(0, (page + 1) * PAGE_SIZE);

  useNuiEvent('closeInventory', () => setSearch(''));
  useNuiEvent('setupInventory', () => setSearch(''));

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);
  return (
    <>
      <div className={`inventory-grid-wrapper${isBusy ? ' is-busy' : ''}`} aria-busy={isBusy} style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div>
          <div className="inventory-grid-header-wrapper">
            <div className="inventory-grid-title-group">
              <span className="inventory-grid-heading-icon" aria-hidden="true">
                {isPlayerInventory ? (
                  <svg viewBox="0 0 24 24"><path d="M6 8h12l1 12H5L6 8Z" /><path d="M9 9V6a3 3 0 0 1 6 0v3" /></svg>
                ) : (
                  <svg viewBox="0 0 24 24"><path d="m3 8 9-5 9 5v11H3V8Z" /><path d="m3 8 9 5 9-5M12 13v6" /></svg>
                )}
              </span>
              <div className="inventory-grid-title-copy">
                <p>{isPlayerInventory ? Locale.ui_player_inventory || 'Player inventory' : inventory.label}</p>
                {isPlayerInventory && inventory.label && <small>{inventory.label}</small>}
              </div>
            </div>
            {inventory.maxWeight && (
              <p>
                {weight / 1000}/{inventory.maxWeight / 1000}kg
              </p>
            )}
          </div>
          <WeightBar percent={inventory.maxWeight ? (weight / inventory.maxWeight) * 100 : 0} />
        </div>
        {isPlayerInventory && (
          <label className="inventory-search">
            <svg viewBox="0 0 24 24" aria-hidden="true">
              <circle cx="10.8" cy="10.8" r="6.8" />
              <path d="m16 16 5 5" />
            </svg>
            <input
              type="search"
              value={search}
              onChange={(event) => {
                setSearch(event.target.value);
                dispatch(closeTooltip());
                onSelect?.(undefined, inventory.type);
              }}
              onFocus={() => dispatch(closeTooltip())}
              placeholder={Locale.ui_search_items || 'Search items'}
              aria-label={Locale.ui_search_player_inventory || 'Search player inventory'}
            />
          </label>
        )}
        <div className="inventory-grid-container" ref={containerRef}>
          {visibleItems.length ? (
            visibleItems.map((item, index) => (
              <InventorySlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                ref={!query && index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                onSelect={onSelect}
                isSelected={selectedSlot?.inventoryType === inventory.type && selectedSlot.slot === item.slot}
                suppressTooltip={Boolean(query)}
              />
            ))
          ) : query && matchingItems.length === 0 ? (
            <div className="inventory-grid-empty-state">{Locale.ui_no_search_results || 'No items match'} “{search.trim()}”</div>
          ) : null}
          {isBusy ? (
            <div className="inventory-grid-state">{Locale.ui_updating_inventory || 'Updating inventory…'}</div>
          ) : !query && !hasItems ? (
            <div className="inventory-grid-state">{Locale.ui_empty_inventory || 'No items'}</div>
          ) : null}
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;
