#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_lib.crtlib.tcSaltGetter;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
RecipeBuilder.get("mage")
  .setShapeless([<ore:treeSapling>, <contenttweaker:rhythmic_seed>])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansGrimoire>, 50)
  .addOutput(<thaumcraft:sapling_silverwood>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<magneticraft:iron_pipe>, <magneticraft:iron_pipe>, <magneticraft:iron_pipe>],
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>]])
  .setFluid(<liquid:mercury> * 500)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(100, 1));
    })
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<thaumcraft:tube> * 6)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotIronCompressed>, <thaumcraft:log_silverwood>, <ore:ingotIronCompressed>],
    [null, <ore:clumpBlue>, null],
    [<ore:ingotIronCompressed>, <thaumcraft:tube>, <ore:ingotIronCompressed>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansAthame>, 30)
  .addOutput(<modularmagic:blockaspectproviderinput>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotIronCompressed>, <thaumcraft:log_silverwood>, <ore:ingotIronCompressed>],
    [null, <ore:clumpYellow>, null],
    [<ore:ingotIronCompressed>, <thaumcraft:tube>, <ore:ingotIronCompressed>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansAthame>, 30)
  .addOutput(<modularmagic:blockaspectprovideroutput>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotGold>, <thaumadditions:brass_plated_silverwood>, <ore:ingotGold>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<thaumcraft:filter> * 2)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(100, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemQuartz>, <ore:lightPlateLead>, <ore:gemQuartz>],
    [<ore:gemQuartz>, <thaumcraft:filter>, <ore:gemQuartz>],
    [<ore:gemQuartz>, <ore:lightPlateLead>, <ore:gemQuartz>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansGrimoire>, 50)
  .addOutput(<thaumcraft:condenser_lattice>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShapeless([
    tcSaltGetter("aer"),
    tcSaltGetter("terra"),
    tcSaltGetter("ignis"),
    tcSaltGetter("aqua"),
    tcSaltGetter("ordo"),
    tcSaltGetter("perditio")])
  .addTool(<ore:artisansMortar>, 20)
  .addOutput(<thaumcraft:salis_mundus> * 6)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotGold>, null],
    [<ore:ingotGold>, <ore:paneGlassColorless>, <ore:ingotGold>],
    [null, <ore:ingotGold>, null]])
  .addTool(<ore:artisansGrimoire>, 40)
  .addOutput(<thaumcraft:thaumometer>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:lightPlateIron>, null, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <ore:gemFlawedQuartz>, <ore:lightPlateIron>],
    [null, <ore:stickWood>, null]])
  .addTool(<ore:artisansGrimoire>, 40)
  .addOutput(<thaumcraft:resonator>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:plateBrass>, <thaumcraft:morphic_resonator>, <ore:plateBrass>],
    [<ore:gearIron>, <minecraft:piston>, <ore:gearIron>],
    [<ore:plateBrass>, <thaumcraft:tube>, <ore:plateBrass>]])
  .addTool(<ore:artisansGrimoire>, 120)
  .setFluid(<liquid:mercury> * 4000)
  .addOutput(<thaumcraft:condenser>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:plateBrass>, null],
    [<thaumcraft:morphic_resonator>, <thaumcraft:metal_alchemical>, <thaumcraft:mechanism_simple>],
    [null, <ore:plateBrass>, null]])
  .setFluid(<liquid:mercury> * 2000)
  .addTool(<ore:artisansGrimoire>, 60)
  .addOutput(<thaumcraft:centrifuge>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:plateBrass>, <thaumcraft:mechanism_simple>, <ore:plateBrass>],
    [<ore:plateThaumium>, <thaumcraft:centrifuge>, <ore:plateThaumium>],
    [<ore:plateBrass>, <ore:blockSilver>, <ore:plateBrass>]])
  .setFluid(<liquid:mercury> * 2000)
  .addTool(<ore:artisansGrimoire>, 120)
  .addOutput(<thaumadditions:aspect_combiner>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:plateBrass>, null],
    [<contenttweaker:culture_medium>, <ore:stickWood>, <ore:plateBrass>],
    [<ore:plateIron>, <contenttweaker:resurrected_meat>, null]])
  .setFluid(<liquid:mercury> * 250)
  .addTool(<ore:artisansGrimoire>, 10)
  .addOutput(<thaumcraft:mechanism_simple>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(100, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<bloodmagic:slate>, <contenttweaker:resurrected_meat>, <bloodmagic:slate>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .setFluid(<liquid:lifeessence> * 500)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<contenttweaker:active_rune>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <ore:plasticPurple>],
    [null, <ore:plasticPurple>, <ore:gemFlawedQuartz>],
    [<ore:lightPlateIron>, null, null]])
  .addTool(<ore:artisansAthame>, 50)
  .setFluid(<liquid:mercury> * 1000)
  .addOutput(<hdsutils:taint_checker>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:paneGlass>, <ore:slabWood>, <ore:paneGlass>],
    [<ore:paneGlass>, null, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]])
  .addTool(<ore:artisansAthame>, 20)
  .addOutput(<thaumcraft:jar_normal>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:plateBrass>, null],
    [<tconstruct:clear_glass>, <thaumcraft:brain>, <ore:plateBrass>],
    [null, <ore:plateBrass>, null]])
  .addTool(<ore:artisansAthame>, 50)
  .setFluid(<liquid:mercury> * 2000)
  .addOutput(<thaumcraft:sanity_checker>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <thaumcraft:mechanism_simple>, null],
    [<thaumcraft:morphic_resonator>, <thaumcraft:metal_alchemical>, <thaumcraft:morphic_resonator>],
    [<thaumicaugmentation:fortified_glass>, <thaumicaugmentation:material:5>, <thaumicaugmentation:fortified_glass>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansHammer>, 100)
  .addOutput(<hdsutils:primordial_charger>)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:pattern>, <ore:pattern>, <ore:pattern>],
    [<artisanworktables:artisans_framing_hammer_iron>, <thaumadditions:brass_plated_silverwood>, <artisanworktables:artisans_handsaw_iron>],
    [<contenttweaker:active_rune>, <thaumcraft:table_wood>, <contenttweaker:active_rune>]])
  .setFluid(<liquid:lifeessence> * 2000)
  .addTool(<ore:artisansFramingHammer>, 60)
  .addOutput(<tconstruct:tooltables:3>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:paneGlass>, <ore:plateBrass>, <ore:paneGlass>],
    [<ore:paneGlass>, <thaumcraft:jar_normal>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]])
  .setFluid(<liquid:unstable_aura> * 2000)
  .addTool(<ore:artisansAthame>, 20)
  .addOutput(<thaumadditions:jar_brass>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:paneGlass>, <thaumcraft:plate:2>, <ore:paneGlass>],
    [<ore:paneGlass>, <thaumadditions:jar_brass>, <ore:paneGlass>],
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]])
  .setFluid(<liquid:unstable_aura> * 2000)
  .addTool(<ore:artisansAthame>, 20)
  .addOutput(<thaumadditions:jar_thaumium>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<improvedbackpacks:tanned_leather>, <astralsorcery:itemcraftingcomponent:5>, <improvedbackpacks:tanned_leather>],
    [<pyrotech:refractory_glass>, <thaumcraft:thaumometer>, <pyrotech:refractory_glass>],
    [null, <astralsorcery:itemcraftingcomponent:5>, null]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansAthame>, 175)
  .addOutput(<thaumcraft:goggles>)
  .setExperienceRequired(500)
  .setConsumeExperience(true)
  .setRecipeAction(function(out, info, player) {
        if (isNull(player) || player.world.remote) return;
        player.addPotionEffect(<potion:minecraft:poison>.makePotionEffect(200, 1));
    })
  .create();
}
