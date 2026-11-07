import InventoryGrid from './InventoryGrid';
import { Inventory as InventoryProps, SlotWithItem } from '../../typings';
import { useAppSelector } from '../../store';
import { selectRightInventory } from '../../store/inventory';

const RightInventory: React.FC<{
  onSelect?: (item: SlotWithItem | undefined, inventoryType: InventoryProps['type']) => void;
  selectedSlot?: { slot: number; inventoryType: InventoryProps['type'] };
}> = ({ onSelect, selectedSlot }) => {
  const rightInventory = useAppSelector(selectRightInventory);

  return <InventoryGrid inventory={rightInventory} onSelect={onSelect} selectedSlot={selectedSlot} />;
};

export default RightInventory;
