execute at @e[tag=entity.dream.finalboss2] positioned ~2 ~5 ~-1 run function dream:entity/healing_crystal/summonb
execute at @e[tag=entity.dream.finalboss2] positioned ~-1 ~5 ~2 run function dream:entity/healing_crystal/summonb
execute at @e[tag=entity.dream.finalboss2] positioned ~1 ~5 ~2 run function dream:entity/healing_crystal/summonb
scoreboard players set dream_finalboss_mirror_on dream_counter 0
execute as @e[tag=entity.dream.finalboss2] run function finalboss_ani:animations/animation.finalboss2.handup/play
schedule function dream:memory_story/final_boss2/skills/2_3/end_ani 14t