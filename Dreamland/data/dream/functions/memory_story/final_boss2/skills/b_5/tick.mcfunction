execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 as @e[tag=dream_healing_crystal] if predicate dream:1in100 run summon area_effect_cloud ~ ~ ~ {Tags:["dream_healing_crystal_healingball"],Duration:300}
execute at @e[tag=dream_healing_crystal_healingball] run effect give @a[distance=0..1.5] instant_health 1 0
execute as @e[tag=dream_healing_crystal_healingball] if entity @a[distance=0..1.5] run kill @s
execute at @e[tag=dream_healing_crystal_healingball] run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 1.0 2 