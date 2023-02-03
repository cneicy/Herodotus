#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, <pyrotech:brick_kiln>, <ore:ingotBronze>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>]])
  .addTool(<ore:artisansDriver>, 20)
  .addOutput(<prodigytech:solid_fuel_aeroheater>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<pyrotech:material:5>, null, <pyrotech:material:5>],
    [<ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>],
    [<pyrotech:material:5>, null, <pyrotech:material:5>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<prodigytech:rotary_grinder>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:gearBronze>, <ore:ingotBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<prodigytech:heat_sawmill>)
  .create();

// TODO: Astral Sorcery mod removed, new recipe needed
// RecipeBuilder.get("engineer")
//   .setShaped([
//     [<ore:plateIron>, <hdsutils:tiny_starlight_storage:1>, <ore:plateIron>],
//     [<astralsorcery:blockcustomflower>, <contenttweaker:starlight_frame>, <astralsorcery:blockcustomflower>],
//     [<ore:plateIron>, <astralsorcery:blockcustomflower>, <ore:plateIron>]])
//   .addTool(<ore:artisansSpanner>, 80)
//   .addOutput(<prodigytech:primordialis_reactor>)
//   .create();

// TODO: Astral Sorcery mod removed, new recipe needed
// RecipeBuilder.get("engineer")
//   .setShaped([
//     [<ore:ingotBronze>, <ore:blockRedstone>, <ore:ingotBronze>],
//     [<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>],
//     [<ore:ingotBronze>, <ore:gearBronze>, <ore:ingotBronze>]])
//   .addTool(<ore:artisansDriver>, 80)
//   .addOutput(<prodigytech:energion_aeroheater>)
//   .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
    [<pyrotech:refractory_brick_block>, null, <pyrotech:refractory_brick_block>],
    [<pyrotech:refractory_brick_block>, <ore:ingotIron>, <pyrotech:refractory_brick_block>]])
  .addTool(<ore:artisansSpanner>, 60)
  .addOutput(<prodigytech:capacitor_charger>)
  .create();

// TODO: Astral Sorcery mod removed, new recipe needed
// RecipeBuilder.get("engineer")
//   .setShaped([
//     [<ore:ingotBronze>, <ore:blockQuartz>, <ore:ingotBronze>],
//     [<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>],
//     [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]])
//   .addTool(<contenttweaker:hot_air_solderer>, 750)
//   .addOutput(<prodigytech:capacitor_aeroheater>)
//   .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:blockRedstone>, <ore:ingotBronze>],
    [<ore:ingotIron>, <minecraft:iron_trapdoor>, <ore:ingotIron>],
    [<ore:ingotBronze>, <hdsutils:tiny_starlight_storage:1>, <ore:ingotBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<prodigytech:magnetic_reassembler>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:ender_pearl>],
    [<prodigytech:primordium>],
    [<ore:rodLongBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<prodigytech:wormhole_linker>)
  .create();

}
