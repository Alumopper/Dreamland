execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_frame ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:120008}},Tags:["block.dreamland.cloud"]}
tag @s remove block.dreamland.cloud_gun
clear @s[gamemode=!creative] light_blue_dye{CustomModelData:120022} 1
#TBD 优化云的显示，避免边界线的出现