#生成追逐者
summon armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Invulnerable:true,Tags:["entity.dreamland.chaser","dream_just"]}
spreadplayers ~ ~ 7 1 true @e[tag=dream_just]
data modify entity @e[tag=dream_just,limit=1] ArmorItems set value [{},{},{},{id:"minecraft:glass",Count:1b,tag:{dreamland:{isTemp:1b},CustomModelData:120006}}]
scoreboard players operation @e[tag=dream_just] dream_playerno = @s dream_playerno
scoreboard players set @e[tag=dream_just] dream_timer 600
tag @e[tag=dream_just] remove dream_just