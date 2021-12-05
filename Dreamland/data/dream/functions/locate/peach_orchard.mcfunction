#找到梦境纪念碑
scoreboard players set dream_temp_structure_locate_po_x dream_counter 0
scoreboard players set dream_temp_structure_locate_po_z dream_counter 0
execute as @e[tag=dream_monument,limit=1,sort=nearest,distance=0..] run tag @s add dream_found
execute store result score dream_temp_structure_locate_po_x dream_counter run data get entity @e[tag=dream_found,limit=1] Pos[0] 
execute store result score dream_temp_structure_locate_po_z dream_counter run data get entity @e[tag=dream_found,limit=1] Pos[2] 
execute if entity @e[tag=dream_found] run tellraw @s [{"translate":"dream.info.locate.po"},{"nbt":"Pos","entity": "@e[tag=dream_found,limit=1]","color": "green","clickEvent": {"action": "suggest_command","value": "/tp @s @e[tag=dream_po,limit=1,sort=nearest]"}}]
execute unless entity @e[tag=dream_found] run tellraw @s [{"translate":"dream.info.locate.null","color": "red"}]
tag @e remove dream_found
