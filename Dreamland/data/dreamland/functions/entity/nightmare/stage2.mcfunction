#进入阶段二
summon armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Tags:["entity.dreamland.nightmare"],Marker:true,ArmorItems:[{},{},{},{id:"glass",Count:1b,tag:{CustomModelData:120004,dreamland:{isTemp:1b}}}]}
summon armor_stand ~ ~1 ~ {NoGravity:true,Invisible:true,Tags:["entity.dreamland.nightmare_shield","entity.dreamland.nightmare_p"],Marker:true}
bossbar set dreamland:boss color blue
bossbar set dreamland:boss max 150
scoreboard players set entity.dreamland.nightmare_shield_hp dream_counter 150
weather rain