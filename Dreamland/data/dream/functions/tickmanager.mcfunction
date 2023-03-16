#为了后续读取方便，首先获取玩家的nbt数据
#管理部分tick函数的运行，避免每tick运行命令过多
#2023.1.27:在优化的过程中，由于执行结构的修改，不得不把某些命令挪了出来
execute as @a at @s run function dream:item_check_tick
execute as @e[tag=dream_db] at @s if entity @a[distance=0..10] run function dream:tower/tick
execute as @e[tag=dream_beacon] at @s run function dream:beacon/tick
execute as @e[tag=dream_creative] at @s if entity @a[distance=0..5] run function dream:creative/tick
    execute as @e[tag=dream_creative_marker] at @s unless entity @e[tag=dream_creative,distance=0..1] run function dream:creative/kill
execute as @e[tag=block.dream.dream_portal] at @s if entity @a[distance=0..20] run function dream:block.dream.dream_portal/tick
    execute as @a[scores={dream_tpwait=100..160}] at @s unless entity @e[distance=0..1.5,tag=block.dream.dream_portal,tag=!block.dream.dream_portal_disable,tag=!block.dream.dream_portal_empty] run scoreboard players set @s dream_tpwait -1
execute if score dream_gamestage dream_counter matches 0 if entity @a[predicate=dream:if_entity/in_nightmare] run function dream:biome/nightmare/orginal_point
execute if score dream_gamestage dream_counter matches -1 run function dream:entity/dark_illusioner/tick
execute if score dream_finalstorystage dream_counter matches 0.. run function dream:memory_story/tick
#混沌世界
execute unless score dream_finalstorystage dream_counter matches 0.. if score dream_gamestage dream_counter matches 3 run function dream:chaos/tick
