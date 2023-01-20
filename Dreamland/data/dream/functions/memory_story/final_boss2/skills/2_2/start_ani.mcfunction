execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.ray/play
scoreboard players set dream_finalboss_mirror_on dream_counter 0
schedule function dream:memory_story/final_boss2/skills/2_2/load 34t
schedule function dream:memory_story/final_boss2/skills/cont_mirror 50t
#技能计时
schedule function dream:memory_story/final_boss2/skills/schedule 6s