execute if entity @s[distance=0..1.5] run function dreamland:memory_story/final_boss1/skills/1_3/get
particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 1 3
execute unless entity @s[distance=0..1.5] positioned ^ ^ ^0.5 run function dreamland:memory_story/final_boss1/skills/1_3/line