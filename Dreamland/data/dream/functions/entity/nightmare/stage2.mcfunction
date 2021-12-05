#进入阶段二
summon armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Tags:["dream_nightmare"],Marker:true,ArmorItems:[{},{},{},{id:"glass",Count:1b,tag:{CustomModelData:120004,tag:{isTemp:1b}}}]}
summon armor_stand ~ ~1 ~ {NoGravity:true,Invisible:true,Tags:["dream_nightmare_shield","dream_nightmare_p"],Marker:true}
bossbar set dream:boss color blue
bossbar set dream:boss max 150
scoreboard players set dream_nightmare_shield_hp dream_counter 150
weather rain