#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

//something that recipeutils can't do or just remove
val removeByOutput as IItemStack[] = [
    <pyrotech:stone_tank>,
    <tconstruct:tooltables:3>,
    <tconstruct:casting>,
    <tconstruct:casting:1>,
    <tconstruct:pattern>,
    <pyrotech:faucet_brick>,
    <prodigytech:solid_fuel_aeroheater>,
    <prodigytech:energion_aeroheater>,
    <prodigytech:rotary_grinder>,
    <prodigytech:heat_sawmill>,
    <prodigytech:magmatic_aeroheater>,
    <prodigytech:magnetic_reassembler>,
    <prodigytech:atomic_reshaper>,
    <prodigytech:primordialis_reactor>,
    <prodigytech:solderer>,
    <prodigytech:ferramic_gear>,
    <prodigytech:wormhole_linker>,
    // <astralsorcery:itemjournal>,
    <advancedrocketry:platepress>,
    <prodigytech:energion_dust>,
    <pyrotech:material:9>,
    <botania:altar>,
    <minecraft:bucket>,
    <minecraft:cauldron>,
    <minecraft:chest>,
    <minecraft:furnace>,
    <actuallyadditions:block_giant_chest>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest_large>,
    <bibliocraft:typesettingtable>,
    <bibliocraft:printingpress>,
    <bibliocraft:bibliochase>,
    <bibliocraft:printplate>,
    <prodigytech:food_enricher>,
    <prodigytech:food_purifier>,
    <prodigytech:capacitor_aeroheater>,
    <prodigytech:capacitor_charger>,
    <mekanismtools:bronzepaxel>,
    <mekanismtools:bronzepickaxe>,
    <mekanismtools:bronzeaxe>,
    <mekanismtools:bronzeshovel>,
    <mekanismtools:bronzehoe>,
    <mekanismtools:bronzesword>,
    <mekanismtools:bronzepaxel>,
    <mekanismtools:steelpickaxe>,
    <mekanismtools:steelaxe>,
    <mekanismtools:steelshovel>,
    <mekanismtools:steelhoe>,
    <mekanismtools:steelsword>,
    <mekanismtools:steelpaxel>,
    <mekanismtools:bronzepaxel>,
    <pyrotech:crate_stone>,
    <pyrotech:brick_kiln>,
    <pyrotech:brick_oven>,
    <pyrotech:brick_sawmill>,
    <pyrotech:brick_crucible>,
    <prodigytech:wormhole_funnel>,
    <factorytech:crate>,
    <magneticraft:box>,
    <pyrotech:worktable_stone>,
    <pyrotech:stone_kiln>,
    <pyrotech:stone_oven>,
    <pyrotech:stone_sawmill>,
    <pyrotech:stone_crucible>,
    <pyrotech:igniter:1>,
    <pyrotech:igniter>,
    <tconstruct:wooden_hopper>,
    <prodigytech:ferramic_handbow>,
    <pyrotech:material:4>,
    <pyrotech:material:35>,
    <actuallyadditions:block_misc:5>,
    <chisel:block_charcoal2:1>,
    <mekanism:basicblock:3>,
    <thermalfoundation:storage_resource>,
    <rftools:redstone_transmitter_block>,
    <rftools:redstone_receiver_block>,
    <rftools:sequencer_block>,
    <rftools:counter_block>,
    <rftools:timer_block>,
    <rftools:logic_block>,
    <rftools:wire_block>,
    <rftools:digit_block>,
    <rftools:analog_block>,
    <snad:snad>,
    <snad:snad:1>,
    <actuallyadditions:block_laser_relay>,
    <actuallyadditions:block_laser_relay_advanced>,
    <actuallyadditions:block_laser_relay_fluids>,
    <actuallyadditions:block_laser_relay_extreme>,
    <actuallyadditions:block_laser_relay_item>,
    <actuallyadditions:block_laser_relay_item_whitelist>
];

val removeByRecipeName as string[] = [
    "minecraft:crafting_table",
    "minecraft:coal_block",
    "minecraft:dark_oak_planks",
    "minecraft:oak_planks",
    "minecraft:spruce_planks",
    "minecraft:birch_planks",
    "minecraft:acacia_planks",
    "minecraft:jungle_planks",
    "minecraft:stick",
    "pyrotech:crafting_table",
    "growthcraft_apples:stick"
    // "astralsorcery:shaped/altar_tier_1"
];

val removeByModid as string[] = [
    "biomesoplenty"
];

if(!isInvalid) {
for item in removeByOutput {
    recipes.remove(item);
}

for name in removeByRecipeName {
    recipes.removeByRecipeName(name);
}

for id in removeByModid {
    recipes.removeByMod(id);
}

val foodMap as IItemStack[IItemStack] = {};
for recipe in furnace.all {
    if (recipe.output.isFood) {
        foodMap[recipe.input] = recipe.output;
    }
}

furnace.removeAll();
for input, output in foodMap {
    furnace.addRecipe(output, input);
}

// mob drops
<entity:minecraft:zombie>.removeDrop(<minecraft:iron_ingot>);
<entity:minecraft:witch>.removeDrop(<minecraft:redstone>);
<entity:minecraft:witch>.removeDrop(<minecraft:glowstone_dust>);
<entity:minecraft:villager_golem>.clearDrops();

}
