#如果等待时间超过3s
execute if score @s dream_tp_cd matches ..-61 run function dreamland:dream_portal/back
scoreboard players remove @s dream_tp_cd 1
particle portal ~ ~ ~ 0.2 0.2 0.2 0.1 10