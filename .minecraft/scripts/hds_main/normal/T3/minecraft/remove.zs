#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

//something that recipeutils can't do or just remove
val removeByOutput as IItemStack[] = [
    <thaumadditions:brass_plated_silverwood>,
    <bloodmagic:blood_rune>,
    <bloodmagic:altar>,
    <botania:manaresource:6>,
    <thaumcraft:stone_arcane>,
    
    // TODO: ProdigyTech is removed
    // <prodigytech:tartaric_aeroheater>,
    // <prodigytech:tartaric_stoker>,
    // <prodigytech:heat_capacitor_2:12000>,
    // <prodigytech:heat_capacitor_3:12000>,
    <botania:laputashard>
];

if(!isInvalid) {
    for item in removeByOutput {
        recipes.remove(item);
    }

    // remove quicksilver fluid of thaumic wonders
    recipes.removeByRecipeName("thaumicwonders:quicksilver_bucket");
    recipes.removeByRecipeName("thaumicwonders:quicksilver_bucket_deconstruct");
}
