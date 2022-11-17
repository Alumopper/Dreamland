execute store success score @s dream_tm_use run tag @e[tag=entity.dream.magicball.boss,distance=0..5] add entity.dream.magicball.weak
tag @e[tag=entity.dream.magicball.weak] remove entity.dream.magicball.boss
execute if score @s dream_tm_use matches 1.. run scoreboard players remove @s dream_magic 12
execute if score @s dream_tm_use matches 1.. run scoreboard players set @s dream_tm_use 0