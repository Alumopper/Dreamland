execute if entity @a[distance=0..1] run particle dust 0.369 0.067 0.067 0.8 ~ ~ ~ 0.1 0.1 0.1 0.0 3
effect give @e[distance=0..1] instant_damage 1 0 false
execute if entity @e[distance=0..1] if entity @e[tag=dream_boss1,scores={dream_boss_hp=0..140}] run effect give @e[tag=dream_boss1] instant_health 1 0
execute unless entity @e[distance=0..1] unless block ~ ~ ~ purple_stained_glass positioned ^ ^ ^0.1 run function dreamland:structure/dream_tower/ray