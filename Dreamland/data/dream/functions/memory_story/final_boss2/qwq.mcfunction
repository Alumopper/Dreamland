#正式开始
scoreboard players set dream_finalstorystage dream_counter 3
#
#生成实体
execute in dream:memory_abyss positioned 495 98 495 run function dream:memory_story/final_boss2/summon
#技能重置
scoreboard players set dream_temp.ma.fb2_temp.stage dream_counter 0