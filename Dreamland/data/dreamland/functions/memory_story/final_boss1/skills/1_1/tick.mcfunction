#粒子效果
execute at @e[tag=dream_finalskill_1_1] run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 1
#伤害
execute at @e[tag=dream_finalskill_1_1] run effect give @a[distance=0..3] instant_damage
#删除
execute as @e[tag=dream_finalskill_1_1] at @s unless blocks ~-1 ~-1 ~-1 ~1 ~-1 ~1 ~1 ~ ~1 all run kill @s
execute as @e[tag=dream_finalskill_1_1] at @s if entity @a[distance=0..2.5] run kill @s