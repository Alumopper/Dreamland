execute at @e[tag=dream_finalboss2] positioned ~2 ~5 ~-1 run function dream:entity/healing_crystal/summong
execute at @e[tag=dream_finalboss2] positioned ~-1 ~5 ~2 run function dream:entity/healing_crystal/summong
execute at @e[tag=dream_finalboss2] positioned ~1 ~5 ~2 run function dream:entity/healing_crystal/summong
execute as @e[tag=dream_finalboss2] run function finalboss_ani:animations/animation.finalboss2.handup/play
schedule function dream:memory_story/final_boss2/skills/2_1/end_ani 14t