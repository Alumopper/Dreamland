execute if entity @s[distance=0..1] run function dreamland:memory_story/final_boss2/skills/2_2/get
execute unless block ~ ~ ~ air run function dreamland:memory_story/final_boss2/skills/2_2/get
particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 1 3
execute unless entity @s[distance=0..1] if block ~ ~ ~ air positioned ^ ^ ^0.5 run function dreamland:memory_story/final_boss2/skills/2_2/line