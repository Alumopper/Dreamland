#游戏阶段
scoreboard players set dream_gamestage dream_counter 0
#世界边界恢复
worldborder set 29999984
advancement grant @a only dream:alpha/dark_illusioner
#bossbar 
bossbar set dream:boss visible false
#
tp @e[tag=dream_dark_illusioner] 0 -10 0
kill @e[tag=dream_dark_meteor]