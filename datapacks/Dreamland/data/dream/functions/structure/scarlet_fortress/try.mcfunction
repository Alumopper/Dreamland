#生成猩红堡垒(50%概率)
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[dream_sf_just]}
scoreboard players set dream_temp_structure_sf_try dream_counter 0
execute store success score dream_temp_structure_sf_try dream_counter as @e[tag=dream_sf_just] at @s if predicate dream:flip_a_coin run function dream:structure/peach_orchard/generate
tag @e[tag=dream_po_just] add dream_po_disable
execute as @e[tag=dream_sf_just] at @s run tp ~10.5 ~ ~10.5
execute if score dream_temp_structure_sf_try dream_counter matches 1 run tag @e[tag=dream_sf_just] add dream_sf
tag @e[tag=dream_sf_just] remove dream_sf_just