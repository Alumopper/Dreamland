#游戏阶段
scoreboard players set dream_gamestage dream_counter 1
#世界边界恢复
worldborder set 29999984
advancement grant @a only dream:alpha/dark_illusioner
kill @e[tag=dream_dark_meteor]
#bossbar 
bossbar set dream:boss visible false
effect give @a regeneration 20 1