import React, { useState } from 'react';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, setItemAmount } from '../../store/inventory';
import { Locale } from '../../store/locale';
import { onUse } from '../../dnd/onUse';
import UsefulControls from './UsefulControls';
import { selectLeftInventory } from '../../store/inventory';
import { Items } from '../../store/items';
import { getItemUrl, getTotalWeight, isSlotWithItem } from '../../helpers';
import { SlotWithItem } from '../../typings';
import WeightBar from '../utils/WeightBar';

const InventoryControl: React.FC = () => {
  const itemAmount = useAppSelector(selectItemAmount);
  const playerInventory = useAppSelector(selectLeftInventory);
  const dispatch = useAppDispatch();

  const [infoVisible, setInfoVisible] = useState(false);

  const inputHandler = (event: React.ChangeEvent<HTMLInputElement>) => {
    event.target.valueAsNumber =
      isNaN(event.target.valueAsNumber) || event.target.valueAsNumber < 0 ? 0 : Math.floor(event.target.valueAsNumber);
    dispatch(setItemAmount(event.target.valueAsNumber));
  };

  const weight = getTotalWeight(playerInventory.items);
  const maxWeight = playerInventory.maxWeight ?? 0;
  const hotbarItems = playerInventory.items.slice(0, 5);

  return (
    <>
      <UsefulControls infoVisible={infoVisible} setInfoVisible={setInfoVisible} />
      <div className="inventory-control">
        <section className="character-panel" aria-label={Locale.ui_character || 'Character'}>
          <header className="character-panel-heading">
            <span className="character-panel-icon" aria-hidden="true">
              <svg viewBox="0 0 24 24"><circle cx="12" cy="8" r="3.5" /><path d="M5 20c.5-4 2.8-6 7-6s6.5 2 7 6" /></svg>
            </span>
            <span><strong>{Locale.ui_character || 'Character'}</strong><small>{playerInventory.label || 'Player'}</small></span>
          </header>

          <div className="character-carry">
            <div className="character-carry-heading">
              <span>{Locale.ui_weight || 'Weight carried'}</span>
              <strong>{(weight / 1000).toFixed(1)} <small>/ {(maxWeight / 1000).toFixed(0)} kg</small></strong>
            </div>
            <WeightBar percent={maxWeight ? (weight / maxWeight) * 100 : 0} />
          </div>

          <div className="quick-access-heading">
            <span>{Locale.ui_quick_access || 'Quick access'}</span>
            <small>1—5</small>
          </div>
          <div className="quick-access-grid">
            {hotbarItems.map((item) => {
              const hasItem = isSlotWithItem(item);
              const itemName = hasItem ? item.metadata?.label || Items[item.name]?.label || item.name : '';

              return (
                <button
                  className={`quick-access-slot${hasItem ? ' has-item' : ''}`}
                  key={`quick-access-${item.slot}`}
                  onClick={() => hasItem && onUse(item as SlotWithItem)}
                  disabled={!hasItem}
                  aria-label={hasItem ? `${itemName}, slot ${item.slot}` : `Slot ${item.slot}, empty`}
                  title={hasItem ? `${itemName} · ${Locale.ui_use || 'Click to use'}` : `Slot ${item.slot}`}
                >
                  <span className="quick-access-number">{item.slot}</span>
                  {hasItem && <img src={getItemUrl(item as SlotWithItem)} alt="" />}
                </button>
              );
            })}
          </div>

          <div className="inventory-control-wrapper">
            <label htmlFor="inventory-amount">{Locale.ui_quantity || 'Amount'}</label>
            <input
              id="inventory-amount"
              className="inventory-control-input"
              type="number"
              defaultValue={itemAmount}
              onChange={inputHandler}
              min={0}
            />
          </div>
        </section>
      </div>

      <button className="useful-controls-button" onClick={() => setInfoVisible(true)}>
        <svg xmlns="http://www.w3.org/2000/svg" height="2em" viewBox="0 0 524 524">
          <path d="M256 512A256 256 0 1 0 256 0a256 256 0 1 0 0 512zM216 336h24V272H216c-13.3 0-24-10.7-24-24s10.7-24 24-24h48c13.3 0 24 10.7 24 24v88h8c13.3 0 24 10.7 24 24s-10.7 24-24 24H216c-13.3 0-24-10.7-24-24s10.7-24 24-24zm40-208a32 32 0 1 1 0 64 32 32 0 1 1 0-64z" />
        </svg>
      </button>
    </>
  );
};

export default InventoryControl;
