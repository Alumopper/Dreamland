#平台
execute if entity @s[predicate=dream:if_entity/in_sweetdream] run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
execute if entity @s[predicate=dream:if_entity/in_sweetdream] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 quartz_block
execute if entity @s[predicate=dream:if_entity/in_nightmare] run fill ~2 ~ ~2 ~-2 ~3 ~-2 air
execute if entity @s[predicate=dream:if_entity/in_nightmare] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 nether_bricks
execute if entity @s[predicate=dream:if_entity/in_nightmare] run setblock ~ ~-1 ~ glowstone
scoreboard players set @s dream_tpwait -1