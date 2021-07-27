#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:blockQuartz>, <ore:plasticPurple>, <ore:blockQuartz>],
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<ore:blockQuartz>, <ore:plasticPurple>, <ore:blockQuartz>]])
  .addTool(<contenttweaker:hot_air_solderer>, 800)
  .addOutput(<hdsutils:basic_thermal_melting_machine_controller>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:lightPlateBronze>, <factorytech:machinepart:80>, <ore:lightPlateBronze>],
    [<ore:lightPlateBronze>, null, <ore:lightPlateBronze>],
    [<ore:lightPlateBronze>, <pyrotech:brick_oven>, <ore:lightPlateBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 800)
  .addOutput(<hdsutils:brass_blast_furnace_controller>)
  .create();
}