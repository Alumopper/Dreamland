#as @a at [!]
tag @s add dream_will_tp
scoreboard players set @s dream_tpwait 161
effect give @s resistance 10 5 false
#成就
advancement grant @s only dreamland:beta/dimension_traveler
#生成标记
execute at @s run summon marker ~ ~ ~ {Tags:["dream_just","dream_bed_id"]}
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
execute as @e[tag=block.dreamland.dream_portal,limit=1,sort=nearest,distance=0..1.5] if entity @s[tag=block.dreamland.dream_portal_sweetdream] at @a[tag=dream_will_tp] in dreamland:sweetdream run tp @a[tag=dream_will_tp] ~ ~ ~
execute as @e[tag=block.dreamland.dream_portal,limit=1,sort=nearest,distance=0..1.5] if entity @s[tag=block.dreamland.dream_portal_nightmare] at @a[tag=dream_will_tp] in dreamland:nightmare run tp @a[tag=dream_will_tp] ~ ~ ~
tag @s remove dream_will_tp
#如果第一次进入，启用崩毁倒计时
execute if score dream_world_collapse dream_timer matches -1 run scoreboard players set dream_world_collapse dream_timer 0
execute if score dream_world_collapse dream_timer matches -2 run scoreboard players set dream_world_collapse dream_timer 120001
#反复进入减少时长
execute if score dream_world_collapse dream_timer matches 0.. run scoreboard players add dream_world_collapse dream_timer 5000
#再传送冷却
scoreboard players set @s dream_tp_cd 200