execute if entity @s[distance=0..1.5] run function dream:memory_story/final_boss2/skills/2_2/get
particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 1 3
execute unless entity @s[distance=0..1.5] positioned ^ ^ ^0.5 run function dream:memory_story/final_boss2/skills/2_2/get