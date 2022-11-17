execute as @e[tag=entity.dream.finalboss2] run function finalboss_ani:animations/animation.finalboss2.ray/play
scoreboard players set dream_finalboss_mirror_on dream_counter 0
schedule function dream:memory_story/final_boss2/skills/2_2/load 34t
schedule function dream:memory_story/final_boss2/skills/cont_mirror 50t