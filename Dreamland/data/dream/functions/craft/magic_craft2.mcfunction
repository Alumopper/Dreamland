#材料处理
clear @p light_blue_dye{tag:{id:"dreamland:index"}}
item replace block ~ ~ ~ container.15 with light_blue_dye{tag: {id: "dreamland:index"}, CustomModelData: 120015, display: {Name: '["点击合成"]'}}
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.1 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.2 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.3 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.10 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.11 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.12 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.19 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.20 with air
execute if score @s dream_counter matches 1 run item replace block ~ ~ ~ container.21 with air
data modify block ~ ~ ~ Items[3].tag.tag.isTemp set value 0b
scoreboard players remove xp dream_xp 500
tag @s add dream_crafting