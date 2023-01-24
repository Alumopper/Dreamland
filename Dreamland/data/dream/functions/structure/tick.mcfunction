#建筑相关
function dream:structure/dream_monument/tick
function dream:structure/peach_orchard/tick
function dream:structure/the_edge_cabin/tick
function dream:structure/scarlet_fortress/tick
execute at @e[tag=dream_black_hole] if entity @e[distance=0..120,predicate=!dream:if_entity/in_choas] run function dream:structure/black_hole/tick
function dream:structure/dream_tower/tick