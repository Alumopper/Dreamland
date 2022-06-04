#粒子效果
execute at @e[tag=dream_finalskill_1_1] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 1.0 5
#
execute at @e[tag=dream_finalskill_1_1] run effect give @a[distance=0..3] instant_damage
#删除
execute as @e[tag=dream_finalskill_1_1] at @s unless block ~ ~-1 ~ air run kill @s
execute as @e[tag=dream_finalskill_1_1] at @s if entity @a[distance=0..2.5] run kill @s