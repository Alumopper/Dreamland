#生成梦境纪念碑(50%概率)
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[dream_dm_just]}
scoreboard players set dream_temp_structure_dm_try dream_counter 0
execute store success score dream_temp_structure_dm_try dream_counter as @e[tag=dream_dm_just] at @s unless entity @e[tag=dream_tower] if predicate dream:1_in_2 run place template dream:miscellaneous/dream_monument
tag @e[tag=dream_dm_just] add dream_dm_disable
execute if score dream_temp_structure_dm_try dream_counter matches 1 run tag @e[tag=dream_dm_just] add dream_dm
execute as @e[tag=dream_dm_just] at @s run tp @s ~3 ~ ~3
tag @e[tag=dream_dm_just] remove dream_dm_just