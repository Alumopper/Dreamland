#材料处理
clear @p light_blue_dye{tag:{id:"dreamland:index"}}
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.1 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.2 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.3 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.10 with air
execute if block ~ ~ ~ barrel{Items:[{Slot:11b,tag:{dreamland:{id:"dreamland:dimension_core"}}}]} run give @a light_blue_dye{CustomModelData:120005,display:{Name:'[{"translate":"item.dreamland.dimension_core","italic":false}]'},tag:{id:"dreamland:dimension_core"}} 1
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.11 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.12 with air
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{dreamland:{id:"dreamland:wand_blueprint"}}}]} run give @a light_blue_dye{CustomModelData:120013,display:{Name:'[{"translate":"item.dreamland.wand_blueprint","italic":false}]'},tag:{id:"dreamland:wand_blueprint"}} 1
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.13 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.19 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.20 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.21 with air
data modify block ~ ~ ~ Items[1].tag.tag.isTemp set value 0b
tag @s add dream_crafting