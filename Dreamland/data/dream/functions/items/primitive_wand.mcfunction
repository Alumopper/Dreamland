scoreboard players remove @s[gamemode=!creative] dream_magic 2
summon area_effect_cloud ^ ^ ^0.1 {Tags:[entity.dream.magicball.weak,dream_just,dream_player_friendly],Duration:150,Radius:0.0f}
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just
scoreboard players set #magic_time dream_timer -60