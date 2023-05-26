function dreamland:particle/spreading_circle_small_g/load
effect give @a[distance=0..3] instant_health 2 5 false
kill @e[tag=dream_finalboss2_skill2_6_target]
execute at @e[tag=entity.dream.finalboss2] positioned ~2 ~5 ~-1 run function dreamland:entity/healing_crystal/summong
execute at @e[tag=entity.dream.finalboss2] positioned ~-1 ~5 ~2 run function dreamland:entity/healing_crystal/summong
execute at @e[tag=entity.dream.finalboss2] positioned ~1 ~5 ~2 run function dreamland:entity/healing_crystal/summong
#实体
tp @e[tag=entity.dream.finalboss2] ~ ~ ~ 
#模型
execute as @e[tag=aj.finalboss_ani.root] at @e[tag=entity.dream.finalboss2,limit=1] positioned ~ ~0.5 ~ rotated -90 0 run function finalboss_ani:move
#
kill @e[tag=dream_finalboss2_skill2_6_target]