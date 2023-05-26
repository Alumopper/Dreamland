#declare tag entity.dreamland.magicball.chaos 混沌魔法球
#扣除魔法值
scoreboard players remove @s[gamemode=!creative] dream_magic 7
#cd
scoreboard players set @s dream_wanduse_cd 0
#注魔-节能
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:3b}}}} run scoreboard players add @s[gamemode=!creative] dream_magic 1
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:4b}}}} run scoreboard players add @s[gamemode=!creative] dream_magic 2
#生成魔法球
summon area_effect_cloud ^ ^ ^0.09 {Tags:[entity.dreamland.magicball.chaos,dream_just,entity.dreamland.magicball],Duration:200000,Radius:0.0f}
scoreboard players set @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] dream_magicball_energy 150
#其他注魔
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:1b}}}} run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.speed
execute if data storage dreamland:player_data {SelectedItem:{tag:{dreamland:{infusion:2b}}}} run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.poison
#水晶
execute store result score dream_temp_i_chswand dream_counter run data get entity @s SelectedItem.tag.dreamland.WandEx[0][0]
execute if score dream_temp_i_chswand dream_counter matches 1 run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.cryst.fire
execute if score dream_temp_i_chswand dream_counter matches 2 run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.cryst.natural
execute if score dream_temp_i_chswand dream_counter matches 3 run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.cryst.water
execute if score dream_temp_i_chswand dream_counter matches 4 run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.cryst.void
execute if score dream_temp_i_chswand dream_counter matches 5 run tag @e[tag=entity.dreamland.magicball.chaos,tag=dream_just] add entity.dreamland.magicball.cryst.ender
#scoreboard players set dream_temp_i_chswand dream_counter 0
execute at @s run tp @e[tag=dream_just,limit=1] ^ ^ ^0.1 ~ ~
tag @e remove dream_just