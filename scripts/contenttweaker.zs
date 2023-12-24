#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.Hand;
import mods.contenttweaker.World;
import mods.contenttweaker.IItemUpdate;
import mods.contenttweaker.Player;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.SoundType;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;











var base_casing = VanillaFactory.createBlock("base_casing", <blockmaterial:rock>);
base_casing.setBlockHardness(10.0);
base_casing.setBlockResistance(10.0);
base_casing.setToolClass("pickaxe");
base_casing.setToolLevel(5);
base_casing.setBlockSoundType(<soundtype:metal>);
base_casing.register();

var space_elevator_cable = VanillaFactory.createBlock("space_elevator_cable", <blockmaterial:rock>);
space_elevator_cable.setBlockHardness(10.0);
space_elevator_cable.setBlockResistance(10.0);
space_elevator_cable.setToolClass("pickaxe");
space_elevator_cable.setToolLevel(5);
space_elevator_cable.setBlockSoundType(<soundtype:metal>);
space_elevator_cable.register();

var support_structure = VanillaFactory.createBlock("support_structure", <blockmaterial:rock>);
support_structure.setBlockHardness(10.0);
support_structure.setBlockResistance(10.0);
support_structure.setToolClass("pickaxe");
support_structure.setToolLevel(5);
support_structure.setBlockSoundType(<soundtype:metal>);
support_structure.register();

var concrete_floor = VanillaFactory.createBlock("concrete_floor", <blockmaterial:rock>);
concrete_floor.setBlockHardness(10.0);
concrete_floor.setBlockResistance(10.0);
concrete_floor.setToolClass("pickaxe");
concrete_floor.setToolLevel(5);
concrete_floor.setBlockSoundType(<soundtype:metal>);
concrete_floor.register();

var motor_t1 = VanillaFactory.createBlock("motor_t1", <blockmaterial:rock>);
motor_t1.setBlockHardness(10.0);
motor_t1.setBlockResistance(10.0);
motor_t1.setToolClass("pickaxe");
motor_t1.setToolLevel(5);
motor_t1.setBlockSoundType(<soundtype:metal>);
motor_t1.register();

var internal_structure = VanillaFactory.createBlock("internal_structure", <blockmaterial:rock>);
internal_structure.setBlockHardness(10.0);
internal_structure.setBlockResistance(10.0);
internal_structure.setToolClass("pickaxe");
internal_structure.setToolLevel(5);
internal_structure.setBlockSoundType(<soundtype:metal>);
internal_structure.register();