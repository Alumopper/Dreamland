execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run setblock ~ ~ ~ barrel{CustomName:'"梦守卫塔"'}
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:120009}}],Pose:{LeftArm:[0.0f,0.0f,0.0f]},Tags:["dream_defender","dream_block"]}
execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:120010}}],Pose:{LeftArm:[0.0f,0.0f,0.0f]},Tags:["dream_defender","dream_block","dream_db"]}
tag @s remove dream_defender