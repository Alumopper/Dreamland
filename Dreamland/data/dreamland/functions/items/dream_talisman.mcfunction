execute store success score @s dream_tm_use run tag @e[tag=entity.dreamland.magicball.boss,distance=0..5] add entity.dreamland.magicball.weak
tag @e[tag=entity.dreamland.magicball.weak] remove entity.dreamland.magicball.boss
execute if score @s dream_tm_use matches 1.. run scoreboard players remove @s dream_magic 9
execute if score @s dream_tm_use matches 1.. run scoreboard players set @s dream_tm_use 0
execute if score @s dream_tm_use matches 1.. run scoreboard players set @s dream_wanduse_cd 0