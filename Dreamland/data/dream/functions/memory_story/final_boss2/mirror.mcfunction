execute store result score dream_playerpos dream_counter run data get entity @a[limit=1] Pos[0] 100
scoreboard players operation dream_playerpos dream_counter -= C_49500 math_count
scoreboard players operation dream_playerpos dream_counter *= C_-1 math_count
scoreboard players operation dream_playerpos dream_counter += C_49500 math_count
data modify entity @e[tag=dream_finalboss2,limit=1] Pos set from entity @a[limit=1] Pos
execute store result entity @e[tag=dream_finalboss2,limit=1] Pos double 0.01 run scoreboard players get dream_playerpos dream_counter 