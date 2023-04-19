#为了后续读取方便，首先获取玩家的nbt数据
#管理部分tick函数的运行，避免每tick运行命令过多
#2023.1.27:在优化的过程中，由于执行结构的修改，不得不把某些命令挪了出来
#检测手持物品，以及手持物品的使用
execute as @a at @s run function dream:item_check_tick
#梦守卫塔和梦崩毁塔
execute as @e[tag=dream_db] at @s if entity @a[distance=0..12] run function dream:tower/tick
#梦境信标
execute as @e[tag=dream_beacon] at @s run function dream:beacon/tick
#创造模式物品栏
execute as @e[tag=dream_creative] at @s if entity @a[distance=0..5] run function dream:creative/tick
    execute as @e[tag=dream_creative_marker] at @s unless entity @e[tag=dream_creative,distance=0..1] run function dream:creative/kill
#梦境传送门
execute as @e[tag=block.dream.dream_portal] at @s if entity @a[distance=0..10] run function dream:dream_portal/tick
    execute as @a[scores={dream_tpwait=100..160}] at @s unless entity @e[distance=0..1.5,tag=block.dream.dream_portal,tag=!block.dream.dream_portal_disable,tag=!block.dream.dream_portal_empty] run scoreboard players set @s dream_tpwait -1
#暗影幻术师的召唤
execute if score dream_gamestage dream_counter matches 0 as @e[type=item,predicate=dream:if_entity/at_illusion_altar] at @s run function dream:structure/illusion_altar/trigger
#暗影幻术师的tick
execute if score dream_gamestage dream_counter matches -1 run function dream:entity/dark_illusioner/tick
#记忆世界的tick
execute if score dream_finalstorystage dream_counter matches 0.. run function dream:memory_story/tick
#混沌世界
execute unless score dream_finalstorystage dream_counter matches 0.. if score dream_gamestage dream_counter matches 3 run function dream:chaos/tick
