#packmode normal
#priority 1000

import mods.dropt.Dropt;
import scripts.grassUtils.StringHelper;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//Remove
Dropt.list("remove_from_grass")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2", "minecraft:double_plant:1", "minecraft:double_plant:0", "minecraft:tallgrass:1", "minecraft:tallgrass:0"])
      .matchDrops([<teslathingies:tesla_plant_seeds>])
      .replaceStrategy("REPLACE_ITEMS")
      .addDrop(Dropt.drop())
  );

//Add
Dropt.list("glass")
    .add(Dropt.rule()
        .matchBlocks(["minecraft:glass", "minecraft:stained_glass"])
        .replaceStrategy("REPLACE_ITEMS")
        .addDrop(Dropt.drop()
            .selector(Dropt.weight(10), "EXCLUDED")
            .items([<pyrotech:material:32>], Dropt.range(1, 4))
        )
    );
    
// TODO: ProdigyTech is removed
// Dropt.list("zorra_fruit")
//     .add(Dropt.rule()
//         .matchBlocks(["prodigytech:zorra_leaves:*"])
//         .addDrop(Dropt.drop()
//             .items([<contenttweaker:zorra_fruit>])
//         )  
//     );

Dropt.list("aura_bottling_machine")
    .add(Dropt.rule()
        .matchBlocks(["requious:aura_bottling_machine:*"])
        .replaceStrategy("REPLACE_ALL")
        .matchHarvester(Dropt.harvester().type("PLAYER").mainHand("WHITELIST", [], "pickaxe;2;-1"))
        .addDrop(Dropt.drop()
            .items([<requious:aura_bottling_machine>])
        )
    );
}
