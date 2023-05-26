#实体
execute store result score dream_playerpos dream_counter run data get entity @a[limit=1] Pos[2] 100
scoreboard players operation dream_playerpos dream_counter -= C_49500 math_count
scoreboard players operation dream_playerpos dream_counter *= C_-1 math_count
scoreboard players operation dream_playerpos dream_counter += C_49500 math_count
data modify entity @e[tag=entity.dreamland.finalboss2,limit=1] Pos set from entity @a[limit=1] Pos
execute store result entity @e[tag=entity.dreamland.finalboss2,limit=1] Pos[2] double 0.01 run scoreboard players get dream_playerpos dream_counter
#二阶段浮空
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 as @e[tag=entity.dreamland.finalboss2] at @s run tp @s ~ ~5 ~
#模型
execute as @e[tag=aj.finalboss_ani.root] at @e[tag=entity.dreamland.finalboss2,limit=1] positioned ~ ~0.5 ~ rotated -90 0 run function finalboss_ani:move
execute as @e[tag=entity.dreamland.finalboss2] at @s facing entity @a[limit=1] eyes run tp @s ~ ~ ~ ~ ~ 