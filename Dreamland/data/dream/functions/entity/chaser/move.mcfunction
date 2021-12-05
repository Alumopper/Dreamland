#追逐自己编号的玩家
execute store result score dream_temp_e_c_m dream_counter run scoreboard players get @s dream_playerno
execute as @a if score @s dream_playerno = dream_temp_e_c_m dream_counter run tag @s add dream_chased_player
execute facing entity @p[tag=dream_chased_player] eyes run tp @s ^ ^ ^0.26 facing entity @p[tag=dream_chased_player]
#若玩家距离过远
execute if entity @p[tag=dream_chased_player,distance=10..] at @p[tag=dream_chased_player] facing entity @s eyes positioned ^ ^ ^3 run tp @s ~ ~ ~ facing entity @p[tag=dream_chased_player]
#伤害玩家
effect give @p[tag=dream_chased_player,distance=0..2.3] instant_damage 1 1
effect give @p[tag=dream_chased_player,distance=0..2.9] poison 2 1 
tag @a remove dream_chased_player