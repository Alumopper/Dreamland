#建筑相关
function dream:structure/dream_monument/tick
function dream:structure/peach_orchard/tick
function dream:structure/the_edge_cabin/tick
function dream:structure/scarlet_fortress/tick
execute at @e[tag=dream_black_hole] if entity @e[distance=0..120,predicate=dream:if_entity/in_chaos] run function dream:structure/black_hole/tick
function dream:structure/dream_tower/tick
#生成建筑的计划刻
execute if entity @a[predicate=!dream:if_entity/in_dream] unless score dream_structure_place_delay dream_timer matches 0..40 run scoreboard players set dream_structure_place_delay dream_timer 0
execute if score dream_structure_place_delay dream_timer matches 40 run function dream:structure/summon_tick
scoreboard players add dream_structure_place_delay dream_timer 1