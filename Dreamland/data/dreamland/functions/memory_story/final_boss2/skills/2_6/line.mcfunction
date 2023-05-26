execute if entity @s[distance=0..1] run function dreamland:memory_story/final_boss2/skills/2_6/get
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 10 1
execute unless entity @s[distance=0..1] positioned ^ ^ ^0.5 run function dreamland:memory_story/final_boss2/skills/2_6/line