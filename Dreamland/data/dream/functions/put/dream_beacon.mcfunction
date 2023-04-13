execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ minecraft:barrier
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {shadow_radius:0,item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:120013}},brightness:{block:15,sky:15},item_display:"head",Tags:["dream_beacon"]}
tag @s remove dream_beacon