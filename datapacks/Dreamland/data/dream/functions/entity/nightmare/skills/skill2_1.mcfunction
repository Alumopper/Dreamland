#生成防御塔
summon armor_stand ~ ~ ~ {Invisible:true,Tags:["dream_nightmare_defend_tower","dream_nightmare_p"]}
execute as @e[tag=dream_nightmare_defend_tower,limit=1] at @s run scoreboard players set @s dream_timer 0
execute as @r at @s run spreadplayers ~ ~ 1 7 false @e[tag=dream_nightmare_defend_tower,limit=1]
#生成建筑,懒得用结构方块了
execute at @e[tag=dream_nightmare_defend_tower,limit=1] run function dream:entity/nightmare/skills/funcs/build_tower