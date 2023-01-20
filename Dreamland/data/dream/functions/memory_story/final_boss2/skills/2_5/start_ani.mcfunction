scoreboard players set dream_finalboss_mirror_on dream_counter 0
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.up/play
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.handup/play
schedule function dream:memory_story/final_boss2/skills/2_5/load 34t
#技能计时
schedule function dream:memory_story/final_boss2/skills/schedule 5s