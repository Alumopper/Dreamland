#粒子效果
execute at @e[tag=dream_finalskill_1_2] run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 1
#漂浮
effect give @e[tag=dream_finalskill_1_2] levitation 1000 5 false
#伤害
execute at @e[tag=dream_finalskill_1_2] run effect give @a[distance=0..3] instant_damage
#删除
execute as @e[tag=dream_finalskill_1_2] at @s positioned ~ 123 ~ if entity @s[distance=0..2] run kill @s
execute as @e[tag=dream_finalskill_1_2] at @s if entity @a[distance=0..2.5] run kill @s