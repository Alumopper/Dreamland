#平台
execute if entity @s[predicate=dreamland:if_entity/in_sweetdream] run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
execute if entity @s[predicate=dreamland:if_entity/in_sweetdream] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 quartz_block
execute if entity @s[predicate=dreamland:if_entity/in_nightmare] run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
execute if entity @s[predicate=dreamland:if_entity/in_nightmare] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 nether_bricks
execute if entity @s[predicate=dreamland:if_entity/in_nightmare] run setblock ~ ~-1 ~ glowstone
scoreboard players set @s dream_tpwait -1
#返回点
execute if score @s dream_tp_cd matches 0.. at @s run summon marker ~ ~ ~ {Tags:["dream_portal_pointer"]}