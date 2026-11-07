import React from 'react';
import { Inventory, SlotWithItem } from '../../typings';
import { Items } from '../../store/items';
import { getItemUrl } from '../../helpers';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { onDrop } from '../../dnd/onDrop';
import { Locale } from '../../store/locale';
import { useDrop } from 'react-dnd';
import { DragSource } from '../../typings';

const InventoryDetails: React.FC<{
  selectedItem: { item: SlotWithItem; inventoryType: Inventory['type'] };
}> = ({ selectedItem }) => {
  const item = selectedItem.item;
  const [, useDropTarget] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      if (source.inventory === 'player') onUse(source.item);
    },
  }));
  const [, giveDropTarget] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    drop: (source) => {
      if (source.inventory === 'player') onGive(source.item);
    },
  }));
  const label = item.metadata?.label || Items[item.name]?.label || item.name;
  const weight = item.weight >= 1000 ? `${(item.weight / 1000).toFixed(2)} kg` : `${item.weight} g`;

  return (
    <section className="inventory-details" aria-live="polite">
      <div className="inventory-details-art"><img src={getItemUrl(item)} alt="" /></div>
      <div className="inventory-details-heading">
        <strong>{label}</strong>
        <small>{selectedItem.inventoryType === 'player' ? Locale.ui_item_player || 'Player item' : Locale.ui_item_storage || 'Storage item'}</small>
      </div>
      {item.metadata?.description && <p className="inventory-details-description">{item.metadata.description}</p>}
      <dl className="inventory-details-facts">
        <div><dt>{Locale.ui_quantity || 'Quantity'}</dt><dd>{item.count.toLocaleString()}</dd></div>
        <div><dt>{Locale.ui_weight || 'Weight'}</dt><dd>{weight}</dd></div>
        {item.durability !== undefined && <div><dt>{Locale.ui_durability || 'Durability'}</dt><dd>{Math.round(item.durability)}%</dd></div>}
      </dl>
      {selectedItem.inventoryType === 'player' && (
        <div className="inventory-details-actions">
          <button ref={useDropTarget} onClick={() => onUse(item)}>{Locale.ui_use || 'Use'}</button>
          <button ref={giveDropTarget} onClick={() => onGive(item)}>{Locale.ui_give || 'Give'}</button>
          <button onClick={() => onDrop({ item, inventory: 'player' })}>{Locale.ui_drop || 'Drop'}</button>
        </div>
      )}
    </section>
  );
};

export default InventoryDetails;
