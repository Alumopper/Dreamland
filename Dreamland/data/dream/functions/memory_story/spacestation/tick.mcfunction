#世界末日剧情
execute if score st_worldend dream_counter matches 0 in dream:memory_abyss positioned 58.8 68.0 63.0 if entity @a[distance=0..1.5] run function dream:memory_story/spacestation/worldend
#空间站实验室最后一段剧情触发
execute if score st_next dream_counter matches 0 if score st_worldend dream_counter matches 1 if score st_energylack dream_counter matches 1 run schedule function dream:memory_story/spacestation/next 5s
execute if score st_next dream_counter matches 0 if score st_worldend dream_counter matches 1 if score st_energylack dream_counter matches 1 run scoreboard players set st_next dream_counter 1
#梦境传送门（剧情特供版）
execute at @e[tag=block.dream.dream_portal] if block ~ ~ ~ barrel{Items:[{tag:{tag:{id:"dreamland:dimension_core"}}}]} run function dream:memory_story/spacestation/block.dream.dream_portal