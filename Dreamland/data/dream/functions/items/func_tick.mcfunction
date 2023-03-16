#矿物探测器高频
execute as @e[type=area_effect_cloud,tag=dream_mineral_detector] run function dream:items/mineral_detector_tick
#云的消散
execute as @e[tag=block.dream.cloud,scores={block.dream.clouddrt=1200}] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10
execute as @e[tag=block.dream.cloud,scores={block.dream.clouddrt=1200}] at @s run kill @s
execute as @e[tag=block.dream.cloud] at @s run scoreboard players add @s block.dream.clouddrt 1
#漂浮在云中
execute as @a at @s if entity @e[tag=block.dream.cloud,distance=0..1] run tag @s add dream_effect_levitation256
#路径点显示
execute at @e[tag=dream_telepoint] run particle dust 0.027 0.494 0.808 1 ~ ~ ~ 0.1 2 0.1 0.1 10