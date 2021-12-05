#生成桃园(50%概率)
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:[dream_po_just]}
scoreboard players set dream_temp_structure_po_try dream_counter 0
execute store success score dream_temp_structure_po_try dream_counter as @e[tag=dream_po_just] at @s unless entity @e[tag=dream_tower] if predicate dream:1_in_2 run function dream:structure/peach_orchard/generate
tag @e[tag=dream_po_just] add dream_po_disable
execute if score dream_temp_structure_po_try dream_counter matches 1 run tag @e[tag=dream_po_just] add dream_po
tag @e[tag=dream_po_just] remove dream_po_just