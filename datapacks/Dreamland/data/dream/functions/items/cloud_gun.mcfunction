execute positioned ^ ^ ^-0.1 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:12008}}],Pose:{LeftArm:[0.0f,0.0f,0.0f]},Tags:["dream_cloud"]}
tag @s remove dream_cloud_gun
clear @s[gamemode=!creative] light_blue_dye{CustomModelData:120022} 1
#TBD 优化云的显示，避免边界线的出现