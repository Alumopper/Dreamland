#合成梦境工作台
execute as @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b,tag:{id:"dreamland:dreamdust"}}}] run function dreamland:craft/crafting_table
#方块挖掘//临时
execute as @e[tag=dream_block] at @s unless block ~ ~ ~ barrel run function dreamland:break
#工作台合成
execute as @e[tag=dream_craftingtable] unless entity @s[tag=dream_crafting] at @s if entity @a[distance=0..4] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:9b,tag:{id:"dreamland:magic_plate"}}]} run function dreamland:craft/craft
execute as @e[tag=dream_craftingtable] unless entity @s[tag=dream_crafting] at @s if entity @a[distance=0..4] if data storage dreamland:crafting_table {Items:[{Slot:9b,tag:{id:"dreamland:magic_plate"}}]} run function dreamland:craft/magic_craft
execute as @e[tag=dream_craftingtable] if entity @s[tag=dream_crafting] at @s if entity @a[distance=0..4] unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s remove dream_crafting
#清除玩家身上不应该有的物品
clear @a #dreamland:clear{dreamland:{isTemp:1b}}
clear @a light_blue_dye{id:"dreamland:index"}
#保证工作台界面正常
execute as @e[tag=dream_craftingtable] at @s run function dreamland:craft/gui
#判断梦之尘是否在床上
execute as @e[type=item,nbt={Item:{tag:{id:"dreamland:dreamdust"}}}] at @s if block ~ ~ ~ #minecraft:beds align xyz positioned ~0.5 ~ ~0.5 run function dreamland:sleep/bed
#去除床的标记
execute as @e[tag=defended_dream_bed] at @s unless entity @e[tag=dream_defender,tag=dream_activated,distance=0..5] run tag @s remove defended_dream_bed
execute as @e[tag=broken_dream_bed] at @s unless entity @e[tag=dream_breaker,tag=dream_activated,distance=0..5] run tag @s remove broken_dream_bed
#注魔效果
execute as @a run function dreamland:infuse/effects
#注魔台
execute as @e[tag=block.dreamland.infusetable] at @s run function dreamland:infuse/tick
#药水效果
execute as @a run function dreamland:effect
#清除临时物品
kill @e[nbt={Item:{tag:{dreamland:{isTemp:1b}}}}]
#记录玩家钓鱼行为
execute as @a[scores={dream_fishing=1..}] run function dreamland:other/fishing
#粒子效果
function dreamland:particle/tick
scoreboard players operation #FS_C_FISHSOU aclib_temp %= #FS_C_FISHSOUP aclib_temp
#美梦世界的飞行
execute as @a at @s if predicate dreamland:if_entity/below_y30 if dimension dreamland:sweetdream run effect give @s levitation 1 40
execute as @a at @s if predicate dreamland:if_entity/below_y30 if dimension dreamland:sweetdream run scoreboard players add @s[scores={dream_sleeptime=0..}] dream_sleeptime 10
#初始化
execute as @a unless score @s dream_playerno matches -2147483648..2147483647 run function dreamland:other/playerno
execute as @a unless score @s dream_chaser_sm matches -2147483648..2147483647 run scoreboard players set @s dream_chaser_sm 0
execute as @a unless score @s dream_magic_regeneration matches -2147483648..2147483647 run scoreboard players set @s dream_magic_regeneration 0
execute as @a unless score @s dream_wanduse_cd matches -2147483648..2147483647 run scoreboard players set @s dream_wanduse_cd 0
execute as @a unless score @s dream_magic matches -2147483648..2147483647 run scoreboard players set @s dream_magic 80
execute as @a unless score @s dream_likelihood matches 0..100 run scoreboard players set @s dream_likelihood 50