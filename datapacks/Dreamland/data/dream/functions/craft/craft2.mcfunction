#材料处理
clear @p light_blue_dye{tag:{id:"dreamland:index"}}
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.1 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.2 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.3 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.10 air
execute if block ~ ~ ~ chest{Items:[{Slot:11b,tag:{tag:{id:"dreamland:dimension_core"}}}]} run give @a light_blue_dye{CustomModelData:12005,display:{Name:'[{"translate":"dream.item.name.dimension_core","italic":false}]'},tag:{id:"dreamland:dimension_core"}} 1
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.11 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.12 air
execute if block ~ ~ ~ chest{Items:[{Slot:13b,tag:{tag:{id:"dreamland:wand_blueprint"}}}]} run give @a light_blue_dye{CustomModelData:120013,display:{Name:'[{"translate":"dream.item.name.wand_blueprint","italic":false}]'},tag:{id:"dreamland:wand_blueprint"}} 1
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.13 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.19 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.20 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.21 air
data modify block ~ ~ ~ Items[1].tag.tag.isTemp set value 0b
tag @s add dream_crafting