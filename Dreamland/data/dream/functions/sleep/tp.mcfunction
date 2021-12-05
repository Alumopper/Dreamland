effect give @s resistance 10 5 false
scoreboard players set @s dream_tpwait 161
#生成标记
execute at @s run summon armor_stand ~ ~ ~ {Tags:["dream_just","dream_bed_id"],Invisible:true,NoGravity:true,Marker:true}
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
execute if score @s dream_bxmingming >= @s dream_likelihood at @s in dream:sweetdream run tp ~ ~ ~
execute if score @s dream_bxmingming < @s dream_likelihood at @s in dream:nightmare run tp ~ ~ ~
scoreboard players set @s dream_sleeptime 0
execute unless entity @a[predicate=!dream:if_entity/in_dream] run time set day
#平台
execute if score @s dream_bxmingming >= @s dream_likelihood in dream:sweetdream at @s run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 quartz_block
execute if score @s dream_bxmingming >= @s dream_likelihood in dream:sweetdream at @s run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
execute if score @s dream_bxmingming < @s dream_likelihood in dream:nightmare at @s run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 nether_bricks
execute if score @s dream_bxmingming < @s dream_likelihood in dream:nightmare at @s run setblock ~ ~-1 ~ glowstone
execute if score @s dream_bxmingming < @s dream_likelihood in dream:nightmare at @s run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
