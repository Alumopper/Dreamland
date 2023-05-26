#生成防御塔
summon marker ~ ~ ~ {Tags:["entity.dreamland.nightmare_defend_tower","entity.dreamland.nightmare_p"]}
execute as @e[tag=entity.dreamland.nightmare_defend_tower,limit=1] at @s run scoreboard players set @s dream_timer 0
execute as @r at @s run spreadplayers ~ ~ 1 7 false @e[tag=entity.dreamland.nightmare_defend_tower,limit=1]
#生成建筑,懒得用结构方块了
execute at @e[tag=entity.dreamland.nightmare_defend_tower,limit=1] run function dreamland:entity/nightmare/skills/funcs/build_tower