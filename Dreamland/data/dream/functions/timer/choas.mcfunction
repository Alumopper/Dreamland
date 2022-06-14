#混沌后
#崩毁倒计时
#注:崩毁时间总计300分钟，分为两个阶段
#阶段一：100分钟，即5个游戏日。此时间段内玩家可以利用梦境传送门在三个维度之间自由往返。
#阶段二：200分钟，一阶段结束后玩家再次利用梦境传送门进入梦境时开始。这一时间段内玩家不能够再使用梦境传送门，并且在200分钟后会被强制传送到终末之梦。
execute if score dream_world_collapse dream_timer matches 0.. run scoreboard players add dream_world_collapse dream_timer 1
execute if score dream_world_collapse dream_timer matches 120000 run scoreboard players set dream_world_collapse dream_timer -2
execute if score dream_world_collapse dream_timer matches 240000 as @a at @s run function dream:structure/black_hole/tp
#梦魇计时器
function dream:entity/nightmare/skills/timer
#梦魇防御塔自毁
execute as @e[scores={dream_timer=600},tag=dream_nightmare_defend_tower] at @s run function dream:entity/nightmare/skills/funcs/kill_self
scoreboard players add @e[tag=dream_nightmare_defend_tower] dream_timer 1
#传送到梦之边境
execute if score dream_pre_tp_to_ted dream_timer matches 0.. run scoreboard players add dream_pre_tp_to_ted dream_timer 1
execute if score dream_pre_tp_to_ted dream_timer matches 0.. at @a run particle portal ~ ~ ~ 3 3 3 0.1 50
execute if score dream_pre_tp_to_ted dream_timer matches 200.. run function dream:entity/nightmare/tp
#梦之边境剧情
execute if score dream_tec_story dream_timer matches 0.. run scoreboard players add dream_tec_story dream_timer 1
function dream:structure/the_edge_cabin/story
execute if score dream_tec_story dream_timer matches 2074 run function dream:structure/the_edge_cabin/exit
execute if score dream_tec_story dream_timer matches 2074 run scoreboard players set dream_tec_story dream_timer -1