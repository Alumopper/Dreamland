scoreboard players remove @s[gamemode=!creative] dream_magic 7
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 2
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 4
summon area_effect_cloud ^ ^ ^0.09 {Tags:[choas_magicball,dream_just],Duration:150,Radius:0.0f}
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:1b}}}}] run tag @e[tag=choas_magicball,tag=dream_just] add dream_magicball_speed
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:2b}}}}] run tag @e[tag=choas_magicball,tag=dream_just] add dream_magicball_poison
#水晶
execute store result score dream_temp_i_chswand dream_counter run data get entity @s SelectedItem.tag.tag.WandEx[0][0]
execute if score dream_temp_i_chswand dream_counter matches 1 run tag @e[tag=choas_magicball,tag=dream_just] add dream_exmagicball_fire
execute if score dream_temp_i_chswand dream_counter matches 2 run tag @e[tag=choas_magicball,tag=dream_just] add dream_exmagicball_natural
execute if score dream_temp_i_chswand dream_counter matches 3 run tag @e[tag=choas_magicball,tag=dream_just] add dream_exmagicball_water
execute if score dream_temp_i_chswand dream_counter matches 4 run tag @e[tag=choas_magicball,tag=dream_just] add dream_exmagicball_void
execute if score dream_temp_i_chswand dream_counter matches 5 run tag @e[tag=choas_magicball,tag=dream_just] add dream_exmagicball_ender
#scoreboard players set dream_temp_i_chswand dream_counter 0
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just
scoreboard players set #magic_time dream_timer -40