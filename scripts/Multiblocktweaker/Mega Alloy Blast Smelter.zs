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

var loc = "mbt:mega_alloy_blast_smelter";

val mega_alloy_blast_smelter = Builder.start(loc, 3009)
    .withPattern(function(controller as IControllerTile) as IBlockPattern {
                       return FactoryBlockPattern.start(RelativeDirection.RIGHT, RelativeDirection.DOWN, RelativeDirection.FRONT)
                            .aisle( "           ", "           ", "           ", "           ", "           ", "           ","           ", "           ", "           ", "           ", "           ","           ", "           ", "   DDDDD   ", "   CCCCC   ", "   AEEEA   ","   AESEA   ", "   AEEEA   ", "   CCCCC   ", "   ZZZZZ   " ),
                            .aisle( "   DDDDD   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ","   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ","   AAAAA   ", "   DDDDD   ", "  D     D  ", "  C     C  ", "  A     A  ","  A     A  ", "  A     A  ", "  C     C  ", "  ZZZZZZZ  " ),
                            .aisle( "  DDDDDDD  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ","  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ","  ABBBBBA  ", "  DBBBBBD  ", " D BBBBB D ", " C BBBBB C ", " A BBBBB A "," A BBBBB A ", " A BBBBB A ", " C BBBBB C ", " ZZZZZZZZZ " ),
                            .aisle( " DDDDDDDDD ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " DB     BD ", "D B     B D", "C B     B C", "A B     B A","A B     B A", "A B     B A", "C B     B C", "ZZZZZZZZZZZ" ),
                            .aisle( " DDDDDDDDD ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " DB     BD ", "D B     B D", "C B     B C", "A B     B A","A B     B A", "A B     B A", "C B     B C", "ZZZZZZZZZZZ" ),
                            .aisle( " DDDDDDDDD ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " DB     BD ", "D B     B D", "C B     B C", "A B     B A","A B     B A", "A B     B A", "C B     B C", "ZZZZZZZZZZZ" ),
                            .aisle( " DDDDDDDDD ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " DB     BD ", "D B     B D", "C B     B C", "A B     B A","A B     B A", "A B     B A", "C B     B C", "ZZZZZZZZZZZ" ),
                            .aisle( " DDDDDDDDD ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " AB     BA ", " AB     BA ", " AB     BA ", " AB     BA "," AB     BA ", " DB     BD ", "D B     B D", "C B     B C", "A B     B A","A B     B A", "A B     B A", "C B     B C", "ZZZZZZZZZZZ" ),
                            .aisle( "  DDDDDDD  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ","  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ", "  ABBBBBA  ","  ABBBBBA  ", "  DBBBBBD  ", " D BBBBB D ", " C BBBBB C ", " A BBBBB A "," A BBBBB A ", " A BBBBB A ", " C BBBBB C ", " ZZZZZZZZZ " ),
                            .aisle( "   DDDDD   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ","   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ", "   AAAAA   ","   AAAAA   ", "   DDDDD   ", "  D     D  ", "  C     C  ", "  A     A  ","  A     A  ", "  A     A  ", "  C     C  ", "  ZZZZZZZ  " ),
                            .aisle( "           ", "           ", "           ", "           ", "           ", "           ","           ", "           ", "           ", "           ", "           ","           ", "           ", "   DDDDD   ", "   CCCCC   ", "   AAAAA   ","   AAAAA   ", "   AAAAA   ", "   CCCCC   ", "   ZZZZZ   " )
                .where('S', controller.self())
            .where("Z", CTPredicate.states(<metastate:gcym:large_multiblock_casing:1>)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:IMPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:EXPORT_FLUIDS>).setMinGlobalLimited(1).setPreviewCount(1)
                                      | CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
            )              
            .where(" ", CTPredicate.getAir())
            .where("D", <metastate:gcym:large_multiblock_casing:1>)
            .where("A", <metastate:gregtech:transparent_casing:2>)
            .where("B", <blockstate:gregtech:wire_coil>)
            .where("E", <metastate:gcym:unique_casing:3>)
            .build();
    } as IPatternBuilderFunction)
	    .withRecipeMap(
		FactoryRecipeMap.start("mega_alloy_blast_smelter")
                        .minFluidInputs(1)
                        .maxFluidInputs(1)
                        .minFluidOutputs(1)
                        .maxFluidOutputs(1)
                        .build())
		.withBaseTexture(<gcym:large_multiblock_casing>.asBlock().definition.getStateFromMeta(1))
		.buildAndRegister();


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
