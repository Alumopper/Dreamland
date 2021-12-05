#魔法充能与冷却
execute if score #magic_time dream_timer matches ..14 run scoreboard players add #magic_time dream_timer 1
execute as @a if score #magic_time dream_timer matches 15.. if score @s dream_magic matches ..79 run scoreboard players add @s dream_magic 1
execute if score #magic_time dream_timer matches 15.. run scoreboard players set #magic_time dream_timer 0 
#进入梦境
execute as @a if score @s dream_tpwait matches 75 run effect give @s blindness 10 0 false
execute as @a if score @s dream_tpwait matches 93 run function dream:sleep/random01
execute as @a if score @s dream_tpwait matches 94 run function dream:sleep/random02
execute as @a at @s if score @s dream_tpwait matches 95 if entity @e[tag=defenfed_dream_bed] run scoreboard players set @s dream_bxmingming 100
execute as @a at @s if score @s dream_tpwait matches 95 if entity @e[tag=broken_dream_bed] run scoreboard players set @s dream_bxmingming 0
execute as @a if score @s dream_tpwait matches 95 run function dream:sleep/tp
#利用梦境传送门进入梦境
execute as @a if score @s dream_tpwait matches 100.. run scoreboard players add @s dream_tpwait 1
execute as @a if score @s dream_tpwait matches 100.. at @s run particle portal ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @a if score @s dream_tpwait matches 160 at @s run function dream:dream_portal/mode/tp
execute as @a if score @s dream_tpwait matches 163 at @s run function dream:other/platform
#梦境计时
execute as @a if score @s dream_sleeptime matches 0.. run scoreboard players add @s dream_sleeptime 1
execute as @a if score @s dream_sleeptime matches 11800 run tellraw @s [{"translate": "dream.info.sleep.leave","color": "gray","italic": true}]
execute as @a if score @s dream_sleeptime matches 12000.. run function dream:sleep/leave
scoreboard players set @a[predicate=!dream:if_entity/in_dream,scores={dream_sleeptime=1..}] dream_sleeptime -1
#梦境塔生成计时
execute if score dream_tower_generation dream_counter matches 10 in dream:sweetdream run function dream:structure/dream_tower/generation2
execute if score dream_tower_generation dream_counter matches 15 in dream:sweetdream run function dream:structure/dream_tower/generation2p
execute if score dream_tower_generation dream_counter matches 20 in dream:sweetdream run function dream:structure/dream_tower/generation3
execute if score dream_tower_generation dream_counter matches 0.. run scoreboard players add dream_tower_generation dream_counter 1
#梦境塔Boss剧情延迟
function dream:structure/dream_tower/story
#boss技能
    #梦境护卫技能一
    execute unless score dream_boss1_skillcd2 dream_timer matches 181..260 if score dream_boss1_skillcd1 dream_timer matches 0.. run scoreboard players add dream_boss1_skillcd1 dream_timer 1
    execute unless score dream_boss1_skillcd2 dream_timer matches 181..260 if score dream_boss1_skillcd1 dream_timer matches 100 as @e[tag=dream_boss1] at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
    #梦境护卫技能二
    execute if score dream_boss1_skillcd2 dream_timer matches 0.. run scoreboard players add dream_boss1_skillcd2 dream_timer 1
#获得云
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{tag:{id:"dreamland:cloud_gun"}}}]}] run scoreboard players set @s dream_cloudcd 0
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{tag:{id:"dreamland:cloud_gun"}}}]}] run scoreboard players add @s dream_cloudcd 1
execute as @a if score @s dream_cloudcd matches 2000 run give @s light_blue_dye{CustomModelData:120022,tag:{id:"dreamland:cloud"},display:{Name:'[{"translate":"dream.item.name.cloud","italic": false}]'}}
execute as @a if score @s dream_cloudcd matches 2000 run scoreboard players set @s dream_cloudcd 0
#崩毁倒计时
#注:崩毁时间总计300分钟，分为两个阶段
#阶段一：100分钟，即5个游戏日。此时间段内玩家可以利用梦境传送门在三个维度之间自由往返。
#阶段二：200分钟，一阶段结束后玩家再次利用梦境传送门进入梦境时开始。这一时间段内玩家不能够再使用梦境传送门，并且在200分钟后会被强制传送到终末之梦。
execute if score dream_world_collapse dream_timer matches 0.. run scoreboard players add dream_world_collapse dream_timer 1
execute if score dream_world_collapse dream_timer matches 120000 run scoreboard players set dream_world_collapse dream_timer -2
execute if score dream_world_collapse dream_timer matches 240000 as @a run function dream:structure/black_hole/tp
#梦魇计时器
function dream:entity/nightmare/skills/timer
#梦魇防御塔自毁
execute as @e[scores={dream_timer=600}] at @s run function dream:entity/nightmare/skills/funcs/kill_self
scoreboard players add @e[tag=dream_nightmare_defend_tower] dream_timer 1
#传送到梦之边境
execute if score dream_pre_tp_to_ted dream_timer matches 0.. run scoreboard players add dream_pre_tp_to_tec dream_timer 1
execute if score dream_pre_tp_to_ted dream_timer matches 0.. at @a run particle portal ~ ~ ~ 3 3 3 0.1 50
execute if score dream_pre_tp_to_ted dream_timer matches 200.. run function dream:entity/nightmare/tp
#梦之边境剧情
execute if score dream_tec_story dream_timer matches 0.. run scoreboard players add dream_tec_story dream_timer 1
function dream:structure/the_edge_cabin/story
execute if score dream_tec_story dream_timer matches 2074 run function dream:structure/the_edge_cabin/exit
execute if score dream_tec_story dream_timer matches 2074 run scoreboard players set dream_tec_story dream_timer -1
#蓝色史莱姆的寿命
execute as @e[tag=dream_balloon_slime] run scoreboard players add @s dream_timer 1
execute as @e[tag=dream_balloon_slime,scores={dream_timer=1200..}] at @s run particle dust 0.094 0.745 0.945 0.75 ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @e[tag=dream_balloon_slime,scores={dream_timer=1200..}] run tp @s ~ -100 ~
#追逐者寿命
execute as @e[tag=dream_chaser] run scoreboard players add @s dream_timer 1