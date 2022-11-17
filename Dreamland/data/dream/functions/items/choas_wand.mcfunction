#declare tag entity.dream.magicball.chaos 混沌魔法球
#扣除魔法值
scoreboard players remove @s[gamemode=!creative] dream_magic 7
#注魔-节能
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 2
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:3b}}}}] run scoreboard players add @s[gamemode=!creative] dream_magic 4
#生成魔法球
summon area_effect_cloud ^ ^ ^0.09 {Tags:[entity.dream.magicball.chaos,dream_just,entity.dream.magicball],Duration:150,Radius:0.0f}
#其他注魔
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:1b}}}}] run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball.speed
execute if entity @s[nbt={SelectedItem:{tag:{tag:{infusion:2b}}}}] run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball_poison
#水晶
execute store result score dream_temp_i_chswand dream_counter run data get entity @s SelectedItem.tag.tag.WandEx[0][0]
execute if score dream_temp_i_chswand dream_counter matches 1 run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball.cryst.fire
execute if score dream_temp_i_chswand dream_counter matches 2 run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball.cryst.natural
execute if score dream_temp_i_chswand dream_counter matches 3 run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball.cryst.water
execute if score dream_temp_i_chswand dream_counter matches 4 run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball.cryst.void
execute if score dream_temp_i_chswand dream_counter matches 5 run tag @e[tag=entity.dream.magicball.chaos,tag=dream_just] add entity.dream.magicball.cryst.ender
#scoreboard players set dream_temp_i_chswand dream_counter 0
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just
scoreboard players set #magic_time dream_timer -40