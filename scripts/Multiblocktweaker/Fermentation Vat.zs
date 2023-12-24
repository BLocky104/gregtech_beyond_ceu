#priority 6
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

var loc = "mbt:fermentation_vat";

val fermentation_vat = Builder.start(loc, 3002)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                .aisle(
                    "     ",
                    " F F ",
                    "     ",
                    " F F ",
                    "     ")
                .aisle(
                    "  P  ",
                    " WWW ",
                    "PWWWP",
                    " WWW ",
                    "  S  ")
                .aisle(
                    "  P  ",
                    " GGG ",
                    "PG GP",
                    " GGG ",
                    "  P  ")
                .aisle(
                    "  P  ",
                    " GGG ",
                    "PG GP",
                    " GGG ",
                    "  P  ")
                .aisle(
                    "  P  ",
                    " GGG ",
                    "PG GP",
                    " GGG ",
                    "  P  ")
                .aisle(
                    "  P  ",
                    " WWW ",
                    "PWWWP",
                    " WWW ",
                    "  P  ")
                .aisle(
                    "     ",
                    "  P  ",
                    " PPP ",
                    "  P  ",
                    "     ")
                .where('S', controller.self())
            .where("G", CTPredicate.states(<metastate:gregtech:metal_casing:4>)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .where(" ", CTPredicate.getAir())
            .where("W", <blockstate:gregtech:machine_casing>)
            .where("P", <metastate:gregtech:boiler_casing:1>)
            .where("F", <metastate:gregtech:meta_block_frame_20:4>)
            .build();
    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("fermentation_vat")
                        .minFluidInputs(1)
                        .maxFluidInputs(1)
                        .minFluidOutputs(1)
                        .maxFluidOutputs(1)
                        .minInputs(1)
						.maxInputs(1)
						.minOutputs(1)
                        .maxOutputs(4)
                        .build())
		.withBaseTexture(<gregtech:boiler_casing:1>.asBlock().definition.getStateFromMeta(1))
		.buildAndRegister();

