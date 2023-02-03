#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import scripts.hds_lib.crtlib.tconPartGetter;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.grassUtils.RecipeUtils.createCrossWithCore;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <chisel:factory> * 32, 
    createCrossWithCore(null, <ore:stone>, <ore:ingotIron>)
);

RecipeUtils.recipeTweak(true, <chisel:tyrian> * 32, 
    RecipeUtils.createSurround(<ore:ingotIron>, <ore:stone>)
);

RecipeUtils.recipeTweak(true, <minecraft:clock>, [
    [null, <ore:nuggetGold>, null],
    [ <ore:nuggetGold>, <ore:dustRedstone>,  <ore:nuggetGold>],
    [null, <ore:nuggetGold>, null]
]);

RecipeUtils.recipeTweak(true, <pyrotech:wither_forge>, [
    [<pyrotech:cog_obsidian>, null, <pyrotech:cog_obsidian>],
    [<ore:itemSkull>, <pyrotech:bloomery>, <ore:itemSkull>],
    [<ore:obsidian>, <ore:itemSkull>, <ore:obsidian>]
]);

RecipeUtils.recipeTweak(true, <torchmaster:feral_flare_lantern>, [
    [null, <ore:nuggetGold>, null],
    [<ore:blockGlass>, <ore:blockGlowstone>, <ore:blockGlass>],
    [null, <ore:nuggetGold>, null]
]);

RecipeUtils.recipeTweak(true, <tconstruct:slimesling>,[
    [<ore:string>, <ore:blockSlime>, <ore:string>],
    [<ore:slimeball>, null, <ore:slimeball>],
    [null, <ore:slimeball>],
]);

RecipeUtils.recipeTweak(true, <pyrotech:mechanical_hopper>,[
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<ore:plankWood>, <ore:stickStone>, <ore:plankWood>],
    [null, <pyrotech:material:16>, null]
]);

RecipeUtils.recipeTweak(true, <pyrotech:compacting_bin>,[
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<pyrotech:material:12>, <ore:slabWood>, <pyrotech:material:12>]
]);

RecipeUtils.recipeTweak(true, <artisanworkstumps:workstump_basic>,[
    [<pyrotech:material:16>, <ore:plankWood>, <pyrotech:material:16>],
    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
    [<ore:plankWood>, <pyrotech:stash>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(false, <ore:dustBronze>.materialPart*4,[
    [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]
]);

RecipeUtils.recipeTweak(true, <minecraft:hopper>,[
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, <pyrotech:mechanical_hopper>, <ore:ingotBronze>],
    [null, <ore:ingotBronze>, null]
]);

RecipeUtils.recipeTweak(true, <cookingforblockheads:spice_rack>*2, [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:ingotIron>, <ore:rodLongIron>, <ore:ingotIron>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:anvil_iron_plated>, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
]);

RecipeUtils.recipeTweak(true, <bibliocraft:framedchest:6>, [
    [<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
    [<bibliocraft:framingsheet>, <bibliocraft:label:6>, <bibliocraft:framingsheet>],
    [<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>]
]);

// TODO: Astral Sorcery mod removed, new recipe needed
// RecipeUtils.recipeTweak(true, <prodigytech:heat_capacitor_1:12000>, [
//     [null, <prodigytech:heat_capacitor_0:12000>, null],
//     [<ore:dustAstralStarmetal>, <ore:dustGold>, <ore:dustAstralStarmetal>],
//     [null, <prodigytech:heat_capacitor_0:12000>, null]
// ]);

RecipeUtils.recipeTweak(true, <jecalculation:item_calculator>, [
    [<pyrotech:material:16>, <ore:blockGlassColorless>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <minecraft:stone_button>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <minecraft:stone_button>, <pyrotech:material:16>]
]);

RecipeUtils.recipeTweak(true, <mekanismtools:ironpaxel>, [
    [<minecraft:iron_axe>, <minecraft:iron_shovel>, <minecraft:iron_pickaxe>],
    [<ore:itemClay>, <ore:stickWood>, <ore:itemClay>],
    [null, <ore:stickWood>, null]
]);

RecipeUtils.recipeTweak(true, <mekanismtools:obsidianpaxel>, [
    [<pyrotech:obsidian_axe>, <pyrotech:obsidian_shovel>, <pyrotech:obsidian_pickaxe>],
    [<ore:itemClay>, <ore:stickWood>, <ore:itemClay>],
    [null, <ore:stickWood>, null]
]);

RecipeUtils.recipeTweak(true, <pyrotech:crate> * 2, RecipeUtils.createSurround(<ore:slabWood>, <ore:plankWood>));

RecipeUtils.recipeTweak(true, <storagedrawers:upgrade_storage:1>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<ore:ingotIron>, <storagedrawers:upgrade_template>, <ore:ingotIron>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <storagedrawers:upgrade_storage:2>, [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<ore:ingotGold>, <storagedrawers:upgrade_template>, <ore:ingotGold>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
]);

recipes.addShaped("alloy_compass", <minecraft:compass>, [
    [null, <ore:ingotConstructionAlloy>, null],
    [<ore:ingotConstructionAlloy>, <ore:dustRedstone>, <ore:ingotConstructionAlloy>],
    [null, <ore:ingotConstructionAlloy>, null]
]);

recipes.addShaped("hopper_from_iron", <minecraft:hopper>, [
    [<ore:lightPlateIron>, null, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <minecraft:chest>, <ore:lightPlateIron>],
    [null, <ore:lightPlateIron>, null]
]);

recipes.addShaped("piston_from_alloy", <minecraft:piston>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:cobblestone>, <ore:ingotConstructionAlloy>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]
]);

val vPlankDef as IItemDefinition = <minecraft:planks>.definition;
val bbChestDef as IItemDefinition = <bibliocraft:framedchest>.definition;
val bbLableDef as IItemDefinition = <bibliocraft:label>.definition;
for i in 0 .. 6{
    val plank as IItemStack = vPlankDef.makeStack(i);
    val lable as IItemStack = bbLableDef.makeStack(i);
    val out as IItemStack = bbChestDef.makeStack(i);
    RecipeUtils.recipeTweak(true, out, [
        [plank, plank, plank],
        [plank, lable, plank],
        [plank, <ore:chestWood>, plank]
    ]);
}

recipes.addShaped(<minecraft:iron_shovel>, [
    [<ore:ingotConstructionAlloy>],
    [<ore:stickWood>],
    [<ore:stickWood>]
]);

recipes.addShaped(<improvedbackpacks:backpack>, [
    [<ore:string>, <improvedbackpacks:tanned_leather>, <ore:string>],
    [<improvedbackpacks:tanned_leather>, <pyrotech:crate>, <improvedbackpacks:tanned_leather>],
    [<ore:string>, <improvedbackpacks:tanned_leather>, <ore:string>]
]);

recipes.addShaped(<minecraft:iron_sword>, [
    [<ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>],
    [<ore:stickWood>]
]);

recipes.addShaped(<minecraft:iron_axe>, [
    [<ore:ingotConstructionAlloy>,<ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<minecraft:iron_hoe>, [
    [<ore:ingotConstructionAlloy>,<ore:ingotConstructionAlloy>],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<pyrotech:anvil_iron_plated>, [
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
]);

recipes.addShaped("flint_pickaxe_2",  <pyrotech:flint_pickaxe>, [
    [tconPartGetter(<tconstruct:pick_head>, "flint"), <pyrotech:material:12>],
    [null, <ore:stickWood>]
]);

recipes.addShaped("flint_sword_2",  <pyrotech:flint_sword>, [
    [tconPartGetter(<tconstruct:sword_blade>, "flint"), <pyrotech:material:12>],
    [null, <ore:stickWood>]
]);

recipes.addShaped("flint_axe_2",  <pyrotech:flint_axe>, [
    [tconPartGetter(<tconstruct:axe_head>, "flint"), <pyrotech:material:12>],
    [null, <ore:stickWood>]
]);

recipes.addShaped("flint_shovel_2",  <pyrotech:flint_shovel>, [
    [tconPartGetter(<tconstruct:shovel_head>, "flint"), <pyrotech:material:12>],
    [null, <ore:stickWood>]
]);

recipes.addShaped("flint_hammer_2",  <pyrotech:flint_hammer>, [
    [tconPartGetter(<tconstruct:hammer_head>, "flint"), <pyrotech:material:12>],
    [null, <ore:stickWood>]
]);

recipes.addShaped("make_gravel", <minecraft:gravel>, RecipeUtils.createSurround(null, <ore:rock>));

recipes.addShapeless("flint_pick_head", tconPartGetter(<tconstruct:pick_head>, "flint"), [
    <ore:itemFlint>, tconPartGetter(<tconstruct:hammer_head>, "flint")
]);

recipes.addShapeless("flint_shovel_head", tconPartGetter(<tconstruct:shovel_head>, "flint"), [
    <ore:itemFlint>, tconPartGetter(<tconstruct:pick_head>, "flint")
]);

recipes.addShapeless("flint_blade", tconPartGetter(<tconstruct:sword_blade>, "flint"), [
    <ore:itemFlint>, tconPartGetter(<tconstruct:axe_head>, "flint")
]);

recipes.addShapeless("flint_axe_head", tconPartGetter(<tconstruct:axe_head>, "flint"), [
    <ore:itemFlint>, <ore:itemFlint>, tconPartGetter(<tconstruct:hammer_head>, "flint")
]);

recipes.addShapeless("recycle_racks", <minecraft:stick> * 4, [<pyrotech:drying_rack>]);

recipes.addShapeless("tiny_bronze_dust", <ore:dustTinyBronze>.materialPart * 4, [
    <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyTin>
]);

recipes.addShapeless("bronze_dust_from_small", <ore:dustBronze>.materialPart, [
    <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallTin>
]);

recipes.addShaped("iron_motar_form_iron_alloy", <advancedmortars:mortar:2>, [
    [null, null, <ore:stickWood>],
    [<ore:ingotConstructionAlloy>, <ore:itemFlint>, <ore:ingotConstructionAlloy>],
    [null, <ore:ingotConstructionAlloy>, null]
]);

recipes.addShaped("iron_hammer_from_alloy", <pyrotech:iron_hammer>, [
    [null, <ore:ingotConstructionAlloy>, <ore:string>],
    [null, <ore:stickWood>, <ore:ingotConstructionAlloy>],
    [<ore:stickWood>, null, null]
]);

recipes.addShaped("chisel_2", <chisel:chisel_iron>, [
    [null, <ore:ingotConstructionAlloy>],
    [<ore:stickWood>, null]
]);

recipes.addShaped("chisel_blocks_from_iron_alloy", <chisel:factory> * 32,
    createCrossWithCore(null, <ore:stone>, <ore:ingotConstructionAlloy>)
);

recipes.addShaped("more_chisel_blocks_from_iron_alloy", <chisel:tyrian> * 32, 
    RecipeUtils.createSurround(<ore:ingotConstructionAlloy>, <ore:stone>)
);

recipes.addShaped("mercury_block", <contenttweaker:mercury_block>, RecipeUtils.createFull3(<ore:ingotMercury>));
recipes.addShaped("mercury_block_deconstruct", <thaumcraft:quicksilver> * 9, [[<contenttweaker:mercury_block>]]);

recipes.replaceAllOccurences(<ore:ingotFerramic>, <ore:ingotBronze>, <*>.only(function(item) {
    return item.definition.owner == "prodigytech" && (item.ores.length == 0 || !item.ores[0].name.contains("Ferramic"));
}));

recipes.replaceAllOccurences(<bibliocraft:framingsaw>, <ore:artisansHandsaw>, <*>.only(function(item) {
    return item.definition.owner == "bibliocraft";
}));

recipes.replaceAllOccurences(<ore:gearFerramic>, <ore:gearBronze>, <*>.only(function(item) {
    return item.definition.owner == "prodigytech";
}));

recipes.replaceAllOccurences(<minecraft:iron_nugget>, <ore:nuggetIron>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<minecraft:dye:4>, <ore:gemFlawedQuartz>, <ore:artisansAthame>);

recipes.replaceAllOccurences(<ore:string>, <pyrotech:material:32>, <ore:artisansGemCutter>);

recipes.addShapeless("hot_air_solderer_trans_0", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_0:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage)));
    }, null
);

recipes.addShapeless("hot_air_solderer_trans_1", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_1:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage) * 3));
    }, null
);

recipes.addShapeless("hot_air_solderer_trans_2", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_2:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage) * 5));
    }, null
);

recipes.addShapeless("hot_air_solderer_trans_3", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_3:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage) * 12));
    }, null
);

val ironAlloy as IIngredient = <ore:ingotConstructionAlloy>;

recipes.addShaped("iron_helmet_2", <minecraft:iron_helmet>, [
    [ironAlloy, ironAlloy, ironAlloy],
    [ironAlloy, null, ironAlloy]
]);

recipes.addShaped("iron_chestplate_2", <minecraft:iron_chestplate>, [
    [ironAlloy, null, ironAlloy],
    [ironAlloy, ironAlloy, ironAlloy],
    [ironAlloy, ironAlloy, ironAlloy]
]);

recipes.addShaped("iron_leggings_2", <minecraft:iron_leggings>, [
    [ironAlloy, ironAlloy, ironAlloy],
    [ironAlloy, null, ironAlloy],
    [ironAlloy, null, ironAlloy]
]);

recipes.addShaped("iron_boots_2", <minecraft:iron_boots>, [
    [ironAlloy, null, ironAlloy],
    [ironAlloy, null, ironAlloy]
]);

recipes.addShaped("shield_2", <minecraft:shield>, [
    [<ore:plankWood>, ironAlloy, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [null, <ore:plankWood>, null]
]);

furnace.addRecipe(<minecraft:dye:2>, <minecraft:cactus>);
}
