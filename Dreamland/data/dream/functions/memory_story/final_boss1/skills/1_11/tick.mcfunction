#粒子效果
execute at @e[tag=dream_finalskill_1_1] run particle dust 0.337 0 0.631 1 ~ ~ ~ 0.1 0.1 0.1 1.0 5
#删除
execute as @e[tag=dream_finalskill_1_1] at @s unless block ~ ~-1 ~ air run kill @s
execute as @e[tag=dream_finalskill_1_1] at @s unless block ~ ~-1 ~ air run summon area_effect_cloud ~ ~ ~ {Radius:3.5f,Duration:600,Color:5374093,Effects:[{Id:20b,Amplifier:1b}]}
execute as @e[tag=dream_finalskill_1_1] at @s if entity @a[distance=0..2.5] run kill @s
execute as @e[tag=dream_finalskill_1_1] at @s if entity @a[distance=0..2.5] run summon area_effect_cloud ~ ~ ~ {Radius:3.5f,Duration:600,Color:5374093,Effects:[{Id:20b,Amplifier:1b}]}