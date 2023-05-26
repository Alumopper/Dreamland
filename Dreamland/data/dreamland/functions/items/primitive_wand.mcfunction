scoreboard players remove @s[gamemode=!creative] dream_magic 4
scoreboard players set @s dream_wanduse_cd 0
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:3b}}}} run scoreboard players add @s[gamemode=!creative] dream_magic 1
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:4b}}}} run scoreboard players add @s[gamemode=!creative] dream_magic 2
summon area_effect_cloud ^ ^ ^0.1 {Tags:[entity.dreamland.magicball.weak,dream_just,dream_player_friendly],Duration:1200,Radius:0.0f}
scoreboard players set @e[tag=dream_just] dream_magicball_energy 90
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:1b}}}} run tag @e[tag=dream_just] add entity.dreamland.magicball.speed
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:2b}}}} run tag @e[tag=dream_just] add entity.dreamland.magicball.poison
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just