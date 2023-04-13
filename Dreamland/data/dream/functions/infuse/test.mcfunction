#检测注魔台对应槽位是否放入对应物品
execute store success score @s dream_infuse_stage unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:4b},{Slot:6b},{Slot:8b}]} if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{tag:{id:"dreamland:magic_plate"}}},{Slot:10b}]} run data get block ~ ~ ~ Items[2].tag.tag.type
execute if score @s dream_infuse_stage matches 1 run function dream:infuse/infuse