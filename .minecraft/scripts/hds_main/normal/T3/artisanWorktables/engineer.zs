#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_lib.crtlib.allMetals;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

var anyGear as IIngredient = null;
for name in allMetals{
    val gear as IOreDictEntry = oreDict.get("gear"~name);
    if (isNull(anyGear)) {
      anyGear = gear;
    } else {
      anyGear |= gear;
    }
}

// TODO: ProdigyTech is removed
// RecipeBuilder.get("engineer")
//   .setShaped([
//     [<ore:ingotBronze>, null, <ore:ingotBronze>],
//     [<ore:ingotRiverIron>, <advancedrocketry:iquartzcrucible>, <ore:ingotRiverIron>],
//     [<ore:ingotRiverIron>, <ore:netherrack>, <ore:ingotRiverIron>]])
//   .addTool(<contenttweaker:hot_air_solderer>, 200)
//   .addOutput(<prodigytech:tartaric_aeroheater>)
//   .create();

// TODO: ProdigyTech is removed
// RecipeBuilder.get("engineer")
//   .setShaped([
//     [null, <prodigytech:heat_capacitor_1:12000>, null],
//     [<ore:ingotGold>, <ore:plasticLightBlue>, <ore:ingotGold>],
//     [null, <prodigytech:heat_capacitor_1>, null]])
//   .addTool(<contenttweaker:hot_air_solderer>, 150)
//   .addOutput(<prodigytech:heat_capacitor_2:12000>)
//   .create();

// TODO: ProdigyTech is removed
// RecipeBuilder.get("engineer")
//   .setShaped([
//     [null, <prodigytech:heat_capacitor_2:12000>, null],
//     [<ore:ingotRiverIron>, <pneumaticcraft:printed_circuit_board>, <ore:ingotRiverIron>],
//     [null, <prodigytech:heat_capacitor_2>, null]])
//   .addTool(<contenttweaker:hot_air_solderer>, 200)
//   .addOutput(<prodigytech:heat_capacitor_3:12000>)
//   .create();

/*
RecipeBuilder.get("engineer")
    .setShaped([
      [<magneticraft:multiblock_parts:5>, anyGear, <magneticraft:multiblock_parts:5>],
      [anyGear, null, anyGear],
      [<magneticraft:multiblock_parts:5>, anyGear, <magneticraft:multiblock_parts:5>]])
    .addTool(<contenttweaker:hot_air_solderer>, 300)
    .addOutput(<modularmachinery:blockcasing:3> * 4)
    .create();
*/
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:blockQuartz>, <ore:plasticPurple>, <ore:blockQuartz>],
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<ore:blockQuartz>, <ore:plasticPurple>, <ore:blockQuartz>]])
  .addTool(<contenttweaker:hot_air_solderer>, 800)
  .addOutput(<herodotus:basic_thermal_melting_machine>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:lightPlateBronze>, <factorytech:machinepart:80>, <ore:lightPlateBronze>],
    [<ore:lightPlateBronze>, null, <ore:lightPlateBronze>],
    [<ore:lightPlateBronze>, <pyrotech:brick_oven>, <ore:lightPlateBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 800)
  .addOutput(<herodotus:aspect_blast_furnace>)
  .create();
/*
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, null, <ore:ingotIronCompressed>],
    [null, <ore:clumpBlue>, null],
    [<ore:ingotIronCompressed>, <pneumaticcraft:omnidirectional_hopper>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 300)
  .addOutput(<modularmachinery:blockinputbus:1>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, null, <ore:ingotIronCompressed>],
    [null, <ore:clumpYellow>, null],
    [<ore:ingotIronCompressed>, <pneumaticcraft:omnidirectional_hopper>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 300)
  .addOutput(<modularmachinery:blockoutputbus:1>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <modularmachinery:blockinputbus>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 300)
  .addOutput(<modularmachinery:blockinputbus:1>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <modularmachinery:blockoutputbus>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 300)
  .addOutput(<modularmachinery:blockoutputbus:1>)
  .create();
*/
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateBrass>, <minecraft:iron_bars>, <ore:plateBrass>],
    [<thaumadditions:brass_plated_silverwood>, <magneticraft:small_tank>, <thaumadditions:brass_plated_silverwood>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 450)
  .addOutput(<requious:aura_bottling_machine>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateBrass>, <thaumcraft:plank_greatwood>, <ore:plateBrass>],
    [<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>],
    [<ore:plateBrass>, <contenttweaker:bottled_aura>, <ore:plateBrass>]])
  .addTool(<contenttweaker:hot_air_solderer>, 500)
  .addOutput(<herodotus:aura_assembler>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <thaumcraft:vis_resonator>, null],
    [<ore:rodGold>, <thaumcraft:seal>, <ore:rodGold>],
    [null, <ore:plateThaumium>, null]])
  .addTool(<contenttweaker:hot_air_solderer>, 100)
  .addOutput(<thaumicaugmentation:material:1> * 3)
  .create();


}
