#as @e[tag=block.dream.infusetable] at @s

#保证注魔台界面正常
function dream:infuse/gui
#注魔
execute if score xp dream_xp matches 650.. if score @s dream_infuse_stage matches 0 run function dream:infuse/test
#只有在注魔进入第二阶段才启用该命令，用于判断玩家是否下达了注魔指令。然而这种判断方法有一种很大的缺陷，就是玩家如果点击第一排的任意一个物品格都会触发(
execute if score @s dream_infuse_stage matches 2 store result score stage3 dream_counter run data get block ~ ~ ~ Items[3].Slot
execute if score @s dream_infuse_stage matches 2 if score stage3 dream_counter matches 9 run function dream:infuse/infuse2
#if block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{dreamland:{id:"dreamland:magic_plate"}}},{Slot:10b}]} run data get block ~ ~ ~ Items[2].tag.dreamland.type
execute if score @s dream_infuse_stage matches 2 unless data block ~ ~ ~ {Items:[{Slot:9b},{Slot:10b}]} run function dream:infuse/reset
#判断玩家是否取出物品
execute if score @s dream_infuse_stage matches 4 unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:24b}]} run scoreboard players set @s dream_infuse_stage 0