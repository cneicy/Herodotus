#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

//something that recipeutils can't do or just remove
val removeByOutput as IItemStack[] = [
    <tconstruct:smeltery_controller>,
    <mekanism:transmitter>,
    <factorytech:pipe>,
    <embers:item_pipe>,
    <embers:pipe>,
    <embers:pump>,
    <embers:item_pump>,
    <prodigytech:automatic_crystal_cutter>,
    <magneticraft:multiblock_parts:*>,
    <magneticraft:multiblock_column>,
    <magneticraft:crafting:3>,
    <magneticraft:solar_panel>,
    <magneticraft:solar_tower>,
    <magneticraft:solar_mirror>,
    <magneticraft:wind_turbine>,
    <factorytech:intermediate:4>,
    <factorytech:machinepart:80>,
    <factorytech:machinepart:81>,
    <factorytech:disassembler>,
    <factorytech:machinepart:51>,
    <factorytech:htfurnace>,
    <magneticraft:steam_boiler>,
    <pneumaticcraft:air_compressor>,
    <pneumaticcraft:advanced_air_compressor>,
    <pneumaticcraft:liquid_compressor>,
    <pneumaticcraft:advanced_liquid_compressor>,
    <pneumaticcraft:vacuum_pump>,
    <magneticraft:crafting:4>,
    <magneticraft:conveyor_belt>,
    <magneticraft:inserter>,
    <magneticraft:relay>,
    <magneticraft:water_generator>,
    <pneumaticcraft:uv_light_box>,
    <actuallyadditions:item_misc:4>,
    <mekanism:machineblock2:11>,
    <factorytech:autominer>,
    <prodigytech:fuel_processor>
    
];

val removeByRecipeName as string[] = [
    "pneumaticcraft:pressure_chamber_valve",
    "pneumaticcraft:pressure_chamber_glass",
    "pneumaticcraft:pressure_chamber_interface",
    "pneumaticcraft:pressure_chamber_wall",
    "factorytech:parts/motor",
    "factorytech:parts/motorgold",
    "factorytech:parts/battery_shell"
];

val removeByModid as string[] = [
    "modularmachinery",
    "teslathingies"
];

val removeByRegex as string[] = [
    "embers:ingot.*_.*"
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

for regex in removeByRegex {
    recipes.removeByRegex(regex);
}
}