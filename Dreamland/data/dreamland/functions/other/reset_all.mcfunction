#将数据包全部的游戏进度重置
#进度去除
advancement revoke @s from dreamland:alpha/goodnight
#游戏进度
scoreboard players set dream_gamestage dream_counter 0
#最终剧情
scoreboard players set dream_finalstorystage dream_counter -1
#计时器
scoreboard players set dream_world_collapse dream_timer -1
#提示信息
tellraw @s "Reset Complete!"