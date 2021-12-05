setblock ~ ~ ~ structure_block{mode:"LOAD",name:"dream:miscellaneous/scarlet_fortress"}
setblock ~ ~1 ~ redstone_block
#战利品生成
execute positioned ~2 ~5 ~2 run function dream:structure/scarlet_fortress/loot
execute positioned ~17 ~5 ~2 run function dream:structure/scarlet_fortress/loot
execute positioned ~2 ~5 ~17 run function dream:structure/scarlet_fortress/loot
execute positioned ~17 ~5 ~17 run function dream:structure/scarlet_fortress/loot