import InventoryGrid from './InventoryGrid';
import { Inventory as InventoryProps, SlotWithItem } from '../../typings';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';

const LeftInventory: React.FC<{
  onSelect?: (item: SlotWithItem | undefined, inventoryType: InventoryProps['type']) => void;
  selectedSlot?: { slot: number; inventoryType: InventoryProps['type'] };
}> = ({ onSelect, selectedSlot }) => {
  const leftInventory = useAppSelector(selectLeftInventory);

  return <InventoryGrid inventory={leftInventory} onSelect={onSelect} selectedSlot={selectedSlot} />;
};

export default LeftInventory;
