#建筑相关
effect give @e[predicate=dream:if_entity/at_monument] regeneration 5 0
function dream:structure/the_edge_cabin/tick
function dream:structure/scarlet_fortress/tick
execute at @e[tag=dream_black_hole] if entity @e[distance=0..120,predicate=dream:if_entity/in_chaos] run function dream:structure/black_hole/tick
function dream:structure/dream_tower/tick