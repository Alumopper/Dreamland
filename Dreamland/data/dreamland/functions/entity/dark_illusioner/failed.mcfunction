#游戏阶段
scoreboard players set dream_gamestage dream_counter 0
advancement grant @a only dreamland:alpha/dark_illusioner
#bossbar 
bossbar set dreamland:boss visible false
#
tp @e[tag=entity.dream.dark_illusioner] 0 -10 0
kill @e[tag=dream_dark_meteor]