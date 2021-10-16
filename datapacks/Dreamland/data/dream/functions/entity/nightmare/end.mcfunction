#结束
kill @e[tag=dream_nightmare]
kill @e[tag=dream_nightmare_rotation]
execute at @p run kill @e[type=#dream:enemy,distance=0..]
#清理计分板
scoreboard players set dream_nightmare_skill1 dream_timer -1
scoreboard players set dream_nightmare_skill2 dream_timer -1
scoreboard players set dream_nightmare_skill3 dream_timer -1
scoreboard players set dream_nightmare dream_counter 0
scoreboard players set dream_nightmare_energy dream_counter 0
#bossbar
bossbar set dream:boss visible false