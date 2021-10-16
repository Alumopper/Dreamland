#材料处理
clear @p light_blue_dye{tag:{id:"dreamland:index"}}
replaceitem block ~ ~ ~ container.15 light_blue_dye{tag:{id:"dreamland:index"},CustomModelData:120015,display:{Name:'["点击合成"]'}}
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.1 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.2 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.3 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.10 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.11 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.12 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.19 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.20 air
execute if score @s dream_counter matches 1 run replaceitem block ~ ~ ~ container.21 air
data modify block ~ ~ ~ Items[3].tag.tag.isTemp set value 0b
scoreboard players remove xp dream_xp 500
tag @s add dream_crafting