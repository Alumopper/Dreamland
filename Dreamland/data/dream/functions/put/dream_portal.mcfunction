execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ chest{CustomName:'"梦境传送门"'}
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:120006}}],Pose:{LeftArm:[0.0f,0.0f,0.0f]},Tags:["block.dream.dream_portal","dream_block"]}
tag @s remove block.dream.dream_portal