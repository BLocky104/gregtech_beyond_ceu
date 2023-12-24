 priority 6
import crafttweaker.block.IBlockState;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import mods.contenttweaker.Random;
import mods.contenttweaker.World;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.IPatternMatchContext;
import mods.gregtech.multiblock.functions.ICheckRecipeFunction;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.functions.IUpdateFormedValidFunction;
import mods.gregtech.multiblock.functions.IFormStructureFunction;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.functions.ICompleteRecipeFunction;
import mods.gregtech.recipe.IRecipe;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.RecipeMap;

var loc = "mbt:large_rock_breaker";

val large_rock_breaker = Builder.start(loc, 3008)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle("CCCCC","F   F","F   F","F   F","CCCCC")
                .aisle("CCCCC"," PBP "," PBP "," PBP ","CCCCC")
                .aisle("SCCCC"," B B "," B B "," B B ","CCCCC")
                .aisle("CCCCC"," PBP "," PBP "," PBP ","CCCCC")
                .aisle("CCCCC","F   F","F   F","F   F","CCCCC")
                .where('S', controller.self())
            .where("C", CTPredicate.states(<metastate:gregtech:metal_casing:6>)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .where(" ", CTPredicate.getAir())
            .where("B", <metastate:gregtech:boiler_firebox_casing:2>)
            .where("F", <metastate:gregtech:meta_block_frame_7:1>)
            .where("P", <metastate:gregtech:boiler_casing:2>)
            .build();
    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("large_rock_breaker")
                        .minFluidInputs(1)
                        .maxFluidInputs(1)
                        .minFluidOutputs(1)
                        .maxFluidOutputs(1)
                        .build())
		.withBaseTexture(<gregtech:metal_casing>.asBlock().definition.getStateFromMeta(6))
		.buildAndRegister();

