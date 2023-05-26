gamerule commandBlockOutput false
#> 
# 故事阶段
# 
# 0-实验室 1-末日剧情 2-第一个boss 3-第二个boss
# 
# **object** - dream_counter
# @within dreamland:memory_story/**
#declare score_holder dream_finalstorystage
scoreboard players set dream_finalstorystage dream_counter 0
#故事触发点
#-1 = 不可触发
#0 = 待触发
#1 = 已触发
#地球毁灭
scoreboard players set st_worldend dream_counter 0
#能源
scoreboard players set st_energylack dream_counter 0
#实验器材
#达成前几个后可触发
scoreboard players set st_next dream_counter 0
#摸鱼
scoreboard players set st_notouchfish dream_counter 0
#空间站故事线
scoreboard players set stl_story dream_counter -1
#放梦境方块
execute in dreamland:memory_abyss positioned 64.5 68 57.5 run function dreamland:put/block.dream.dream_portal
#
gamemode adventure @a[gamemode=survival]