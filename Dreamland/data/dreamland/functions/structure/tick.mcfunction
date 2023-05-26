#建筑相关
effect give @e[predicate=dreamland:if_entity/at_monument] regeneration 5 0
function dreamland:structure/the_edge_cabin/tick
execute at @e[tag=dream_black_hole] if entity @e[distance=0..120,predicate=dreamland:if_entity/in_chaos] run function dreamland:structure/black_hole/tick
function dreamland:structure/dream_tower/tick