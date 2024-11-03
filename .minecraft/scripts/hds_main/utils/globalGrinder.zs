#priority 30000

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.grassUtils.IngredientHelper;

function addGrinderRecipe(input as IIngredient, output as IIngredient) as void {
    val outputItem as IItemStack = IngredientHelper.getItem(output);
    if (input instanceof IOreDictEntry) {
        val od as IOreDictEntry = input;
        
        // TODO: ProdigyTech is removed
        // mods.prodigytech.rotarygrinder.addRecipe(od, outputItem);
    
    } else {
        
        // TODO: ProdigyTech is removed
        // mods.prodigytech.rotarygrinder.addRecipe(IngredientHelper.getItem(input), outputItem);
    
    }
    mods.factorytech.Grindstone.addRecipe(outputItem, input, true);
}

val map as IIngredient[IIngredient] = {
    <pneumaticcraft:plastic:8> : <emergingtechnology:shreddedplastic>,
    <pyrotech:cobblestone> : <pyrotech:rock:3> * 8,
    <minecraft:stone:5> : <pyrotech:rock:3> * 8,
    <pyrotech:limestone> : <pyrotech:rock:8> * 8,
    <pyrotech:cobblestone:3> : <pyrotech:rock:8> * 8,
    <minecraft:stone:3> : <pyrotech:rock:2> * 8,
    <pyrotech:cobblestone:1> : <pyrotech:rock:2> * 8
};

for input, output in map {
    addGrinderRecipe(input, output);
}


