#故事阶段
scoreboard players set dream_finalstotystage dream_counter 0
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
scoreboard players set stl_story dream_counter 0
gamerule commandBlockOutput false