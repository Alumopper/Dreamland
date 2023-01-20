#合成梦境工作台
execute as @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{tag:{id:"dreamland:dreamdust"}}}}] run function dream:craft/crafting_table
#方块挖掘//临时
execute as @e[tag=dream_block] at @s unless block ~ ~ ~ chest run function dream:break
#检测是否使用胡萝卜钓竿
execute as @a[scores={dream_using=1..}] run function dream:coas_test
#工作台合成
execute as @e[tag=dream_craftingtable] unless entity @s[tag=dream_crafting] at @s if entity @a[distance=0..4] unless block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,tag:{tag:{id:"dreamland:magic_plate"}}}]} run function dream:craft/craft
execute as @e[tag=dream_craftingtable] unless entity @s[tag=dream_crafting] at @s if entity @a[distance=0..4] if block ~ ~ ~ minecraft:chest{Items:[{Slot:9b,tag:{tag:{id:"dreamland:magic_plate"}}}]} run function dream:craft/magic_craft
execute as @e[tag=dream_craftingtable] if entity @s[tag=dream_crafting] at @s if entity @a[distance=0..4] unless block ~ ~ ~ minecraft:chest{Items:[{Slot:16b}]} run tag @s remove dream_crafting
#清除玩家身上不应该有的物品
clear @a #dream:clear{tag:{isTemp:1b}}
clear @a light_blue_dye{tag:{id:"dreamland:index"}}
#保证工作台界面正常
execute as @e[tag=dream_craftingtable] at @s run function dream:craft/gui
#保证注魔台界面正常
execute as @e[tag=dream_infusetable] at @s run function dream:infuse/gui
#注魔
execute if score xp dream_xp matches 650.. if score dream_infuse_stage dream_counter matches 0 as @e[tag=dream_infusetable] at @s run function dream:infuse/test
#只有在注魔进入第二阶段才启用该命令，用于判断玩家是否下达了注魔指令。然而这种判断方法有一种很大的缺陷，就是玩家如果点击第一排的任意一个物品格都会触发(
execute if score dream_infuse_stage dream_counter matches 2 as @e[tag=dream_infusetable] at @s store result score stage3 dream_counter run data get block ~ ~ ~ Items[3].Slot
execute if score dream_infuse_stage dream_counter matches 2 if score stage3 dream_counter matches 9 as @e[tag=dream_infusetable] at @s run function dream:infuse/infuse2
#判断玩家是否取出物品
execute if score dream_infuse_stage dream_counter matches 4 as @e[tag=dream_infusetable] at @s unless block ~ ~ ~ minecraft:chest{Items:[{Slot:24b}]} run scoreboard players set dream_infuse_stage dream_counter 0
#判断梦之尘是否在床上
execute as @e[type=item,nbt={Item:{tag:{tag:{id:"dreamland:dreamdust"}}}}] at @s if block ~ ~ ~ #minecraft:beds align xyz positioned ~0.5 ~ ~0.5 run function dream:sleep/bed
#注魔效果
function dream:infuse/tick
#药水效果
execute as @a run function dream:effect
#清除临时物品
kill @e[nbt={Item:{tag:{tag:{isTemp:1b}}}}]
#检测玩家的潜行
tag @a remove dream_sneaking
execute as @a[scores={dream_shift=1..}] run function dream:other/sneak
#记录玩家钓鱼行为
execute as @a[scores={dream_fishing=1..}] run function dream:other/fishing
#
function dream:particle/tick
scoreboard players operation #FS_C_FISHSOU aclib_temp %= #FS_C_FISHSOUP aclib_temp