effect give @s resistance 10 5 false
scoreboard players set @s dream_tpwait 161
#生成标记
execute at @s run summon marker ~ ~ ~ {Tags:["dream_just","dream_bed_id"],NoGravity:true}
scoreboard players operation @s dream_bed_id = dream_static_bed_id dream_bed_id
scoreboard players operation @e[tag=dream_bed_id] dream_bed_id = dream_static_bed_id dream_bed_id
scoreboard players add dream_static_bed_id dream_bed_id 1
tag @e remove dream_just
#记录坐标
execute store result score sleep_tp_tempvar_x dream_counter run data get entity @s Pos[0] 10
execute store result score sleep_tp_tempvar_z dream_counter run data get entity @s Pos[2] 10
#偏移原点
execute if score sleep_tp_tempvar_x dream_counter matches 0..5000 if score sleep_tp_tempvar_z dream_counter matches 0..5000 at @s run tp @s ~500 ~ ~500
execute if score sleep_tp_tempvar_x dream_counter matches -5000..-1 if score sleep_tp_tempvar_z dream_counter matches 0..5000 at @s run tp @s ~-500 ~ ~500
execute if score sleep_tp_tempvar_x dream_counter matches 0..5000 if score sleep_tp_tempvar_z dream_counter matches -5000..-1 at @s run tp @s ~500 ~ ~-500
execute if score sleep_tp_tempvar_x dream_counter matches -5000..-1 if score sleep_tp_tempvar_z dream_counter matches -5000..-1 at @s run tp @s ~-500 ~ ~-500
execute if score @s dream_bxmingming >= @s dream_likelihood at @s in dreamland:sweetdream run tp ~ ~ ~
execute if score @s dream_bxmingming < @s dream_likelihood at @s in dreamland:nightmare run tp ~ ~-30 ~
scoreboard players set @s dream_sleeptime 0
#平台
execute if score @s dream_bxmingming >= @s dream_likelihood in dreamland:sweetdream at @s run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 quartz_block
execute if score @s dream_bxmingming >= @s dream_likelihood in dreamland:sweetdream at @s run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
execute if score @s dream_bxmingming < @s dream_likelihood in dreamland:nightmare at @s run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 nether_bricks
execute if score @s dream_bxmingming < @s dream_likelihood in dreamland:nightmare at @s run setblock ~ ~-1 ~ glowstone
execute if score @s dream_bxmingming < @s dream_likelihood in dreamland:nightmare at @s run fill ~2 ~ ~2 ~-2 ~3 ~-2 air