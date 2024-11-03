#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, null, <ore:plateIron>],
    [null, <ore:plateIron>, null]])
  .addTool(<ore:artisansHammer>, 15)
  .addOutput(<minecraft:bucket>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 24)
  .addOutput(<minecraft:cauldron>)
  .create();

// TODO: ProdigyTech is removed, new recipe is needed
// RecipeBuilder.get("blacksmith")
//   .setShaped([
//     [null, <ore:gemFlawedQuartz>, <ore:ingotIron>],
//     [<ore:gemFlawedQuartz>, <ore:ingotIron>, <ore:gemFlawedQuartz>],
//     [<prodigytech:heat_capacitor_0:*>.marked("c"), <ore:gemFlawedQuartz>, null]])
//   .addTool(<ore:artisansHammer>, 50)
//   .addOutput(<contenttweaker:hot_air_solderer>)
//   .setRecipeFunction(function(out, ins, info) {
//     return out.withDamage(32000 - (12000 - ins.c.damage));
//   })
//   .create();

// RecipeBuilder.get("blacksmith")
//   .setShapeless([<minecraft:glass_pane>, <contenttweaker:astral_lens>, <ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>])
//   .addTool(<contenttweaker:hot_air_solderer>, 120)
//   .addOutput(<astralsorcery:itemcraftingcomponent:3>)
//   .create();

// TODO: Astral Sorcery mod removed, new recipe needed
// RecipeBuilder.get("blacksmith")
//   .setShapeless([<ore:gemFlawlessGlimmerite>, <astralsorcery:itemcraftingcomponent:3>.reuse(), <astralsorcery:blockmarbleslab>, <ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>])
//   .addTool(<contenttweaker:hot_air_solderer>, 100)
//   .addOutput(<hdsutils:tiny_starlight_storage>)
//   .create();

// TODO: Astral Sorcery mod removed, new recipe needed
// RecipeBuilder.get("blacksmith")
//   .setShapeless([<prodigytech:primordialis_reactor>, <astralsorcery:itemcraftingcomponent:3>, <prodigytech:primordium>])
//   .addTool(<contenttweaker:hot_air_solderer>, 200)
//   .addOutput(<prodigytech:atomic_reshaper>)
//   .create();

// TODO: ProdigyTech is removed, new recipe is needed
// RecipeBuilder.get("blacksmith")
//   .setShaped([
//     [<ore:ingotBronze>, <ore:obsidian>, <ore:ingotBronze>],
//     [<ore:ingotBronze>, <ore:enderpearl>, <ore:ingotBronze>]])
//   .addTool(<contenttweaker:hot_air_solderer>, 180)
//   .addOutput(<prodigytech:wormhole_funnel> * 2)
//   .create();
}