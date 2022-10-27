#declare tag dream_magicball 梦境法杖魔法球
scoreboard players remove @s[gamemode=!creative] dream_magic 5
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 1
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:4b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 3
summon area_effect_cloud ^ ^ ^0.1 {Tags:[dream_magicball,dream_just],Duration:100,Radius:0.0f}
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:1b}}}}] run tag @e[tag=dream_just] add dream_magicball_speed
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:2b}}}}] run tag @e[tag=dream_just] add dream_magicball_poison
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just
scoreboard players set #magic_time dream_timer -40