execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel{Items:[{id:"minecraft:light_blue_dye",Count:1b,Slot:15b,tag:{tag:{id:"dreamland:index"},CustomModelData:120015,display:{Name:'["确认合成"]'}}}],CustomName:'"梦境合成台"'}
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {shadow_radius:0,item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:120003}},Tags:["dream_craftingtable","dream_block"],brightness:{block:15,sky:15},item_display:"head"}
tag @s remove dream_craftingtable
