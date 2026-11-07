import React, { useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import InventoryControl from './InventoryControl';
import InventoryHotbar from './InventoryHotbar';
import { useAppDispatch } from '../../store';
import { refreshSlots, setAdditionalMetadata, setupInventory } from '../../store/inventory';
import { useExitListener } from '../../hooks/useExitListener';
import type { Inventory as InventoryProps, SlotWithItem } from '../../typings';
import RightInventory from './RightInventory';
import LeftInventory from './LeftInventory';
import Tooltip from '../utils/Tooltip';
import { closeTooltip } from '../../store/tooltip';
import InventoryContext from './InventoryContext';
import { closeContextMenu } from '../../store/contextMenu';
import Fade from '../utils/transitions/Fade';
import InventoryDetails from './InventoryDetails';
import { Locale } from '../../store/locale';
import { fetchNui } from '../../utils/fetchNui';
import { useDragDropManager } from 'react-dnd';
import { InventoryType } from '../../typings';
import type { DragSource } from '../../typings';
import type { ItemsPayload } from '../../reducers/refreshSlots';

type SelectedItem = { item: SlotWithItem; inventoryType: InventoryProps['type'] };

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = useState(false);
  const [selectedItem, setSelectedItem] = useState<SelectedItem>();
  const dispatch = useAppDispatch();
  const dragDropManager = useDragDropManager();

  useNuiEvent<boolean>('setInventoryVisible', setInventoryVisible);
  useNuiEvent<false>('closeInventory', () => {
    setInventoryVisible(false);
    setSelectedItem(undefined);
    dispatch(closeContextMenu());
    dispatch(closeTooltip());
  });
  useExitListener(setInventoryVisible);

  useNuiEvent<{
    leftInventory?: InventoryProps;
    rightInventory?: InventoryProps;
  }>('setupInventory', (data) => {
    dispatch(setupInventory(data));
    setSelectedItem(undefined);
    !inventoryVisible && setInventoryVisible(true);
  });

  useNuiEvent<{ items?: ItemsPayload | ItemsPayload[] }>('refreshSlots', (data) => {
    dispatch(refreshSlots(data));
    setSelectedItem(undefined);
    if (!data.items || !dragDropManager.getMonitor().isDragging()) return;

    const dragged = dragDropManager.getMonitor().getItem() as DragSource | null;
    if (!dragged) return;

    const changedItems = Array.isArray(data.items) ? data.items : [data.items];
    const draggedFromPlayer = dragged.inventory === InventoryType.PLAYER;
    const draggedSlotChanged = changedItems.some((changed) => {
      const changedFromPlayer = !changed.inventory || changed.inventory === InventoryType.PLAYER;
      return changed.item.slot === dragged.item.slot && changedFromPlayer === draggedFromPlayer;
    });

    if (draggedSlotChanged) dragDropManager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  useNuiEvent('displayMetadata', (data: Array<{ metadata: string; value: string }>) => {
    dispatch(setAdditionalMetadata(data));
  });

  return (
    <>
      <Fade in={inventoryVisible}>
        <div className={`inventory-wrapper${selectedItem ? ' has-selected-item' : ''}`}>
          <div className="inventory-brand" aria-label="DACH Inventory">
            <span className="inventory-brand-mark" aria-hidden="true">
              <svg viewBox="0 0 40 36" focusable="false">
                <path d="M4 4h15.5C30.3 4 37 9.7 37 18S30.3 32 19.5 32H4l5.3-8H20c4 0 6.8-2.1 6.8-6s-2.8-6-6.8-6h-6.1L9.3 18H4l5.3-8H4z" />
                <path d="M4 4h7.7l-5.2 8H4zM4 24h7.7l-5.2 8H4z" opacity=".7" />
              </svg>
            </span>
            <span className="inventory-brand-name">
              <strong>DACH</strong>
              <small>INVENTORY</small>
            </span>
            <span className="inventory-brand-divider" />
            <span className="inventory-brand-caption">{Locale.ui_inventory_caption || ' '}</span>
          </div>
          <button
            className="inventory-top-close"
            onClick={() => fetchNui('exit')}
            aria-label={Locale.ui_close || 'Close inventory'}
            title={Locale.ui_close || 'Close inventory'}
          >
            <svg viewBox="0 0 24 24" aria-hidden="true"><path d="m6 6 12 12M18 6 6 18" /></svg>
          </button>
          <LeftInventory
            onSelect={(item, inventoryType) => setSelectedItem(item ? { item, inventoryType } : undefined)}
            selectedSlot={selectedItem && { slot: selectedItem.item.slot, inventoryType: selectedItem.inventoryType }}
          />
          <InventoryControl />
          <RightInventory
            onSelect={(item, inventoryType) => setSelectedItem(item ? { item, inventoryType } : undefined)}
            selectedSlot={selectedItem && { slot: selectedItem.item.slot, inventoryType: selectedItem.inventoryType }}
          />
          {selectedItem && <InventoryDetails selectedItem={selectedItem} />}
          <div className="inventory-footer" aria-hidden="true">
            <kbd>ESC</kbd>
            <span>{Locale.ui_close || 'Close inventory'}</span>
            <i />
            <span>{Locale.ui_drag_hint || 'Drag items to transfer'}</span>
            <i />
            <span>{Locale.ui_context_hint || 'Right-click for options'}</span>
          </div>
          <Tooltip />
          <InventoryContext />
        </div>
      </Fade>
      <InventoryHotbar />
    </>
  );
};

export default Inventory;
