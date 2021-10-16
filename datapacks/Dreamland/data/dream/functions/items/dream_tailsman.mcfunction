execute store success score @s dream_tm_use run tag @e[tag=dream_magicball_boss,distance=0..5] add dream_weak_magicball
tag @e[tag=dream_weak_magicball] remove dream_magicball_boss
execute if score @s dream_tm_use matches 1.. run scoreboard players remove @s dream_magic 12
execute if score @s dream_tm_use matches 1.. run scoreboard players set @s dream_tm_use 0