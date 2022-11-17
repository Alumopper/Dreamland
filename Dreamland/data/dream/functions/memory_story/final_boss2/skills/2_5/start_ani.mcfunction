scoreboard players set dream_finalboss_mirror_on dream_counter 0
execute as @e[tag=entity.dream.finalboss2] run function finalboss_ani:animations/animation.finalboss2.up/play
execute as @e[tag=entity.dream.finalboss2] run function finalboss_ani:animations/animation.finalboss2.handup/play
schedule function dream:memory_story/final_boss2/skills/2_5/load 34t