scoreboard players remove @s[gamemode=!creative] dream_magic 7
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 2
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 4
summon area_effect_cloud ^ ^ ^0.1 {Tags:[choas_magicball,dream_just],Duration:150,Radius:0.0f}
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:1b}}}}] run tag @e[tag=choas_magicball,distance=0] add dream_magicball_speed
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:2b}}}}] run tag @e[tag=choas_magicball,distance=0] add dream_magicball_poison
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just
scoreboard players set #magic_time dream_timer -50