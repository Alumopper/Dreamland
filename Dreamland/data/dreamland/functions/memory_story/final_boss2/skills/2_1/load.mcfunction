execute at @e[tag=entity.dream.finalboss2] positioned ~2 ~5 ~-1 run function dreamland:entity/healing_crystal/summong
execute at @e[tag=entity.dream.finalboss2] positioned ~-1 ~5 ~2 run function dreamland:entity/healing_crystal/summong
execute at @e[tag=entity.dream.finalboss2] positioned ~1 ~5 ~2 run function dreamland:entity/healing_crystal/summong
scoreboard players set dream_finalboss_mirror_on dream_counter 0
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.handup/play
schedule function dreamland:memory_story/final_boss2/skills/2_1/end_ani 14t
#技能计时
schedule function dreamland:memory_story/final_boss2/skills/schedule 3s