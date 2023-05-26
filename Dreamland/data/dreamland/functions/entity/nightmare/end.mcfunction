#结束
kill @e[tag=entity.dreamland.nightmare]
kill @e[tag=entity.dreamland.nightmare_rotation]
execute at @p run kill @e[type=#dreamland:enemy,distance=0..]
#清理计分板
scoreboard players set entity.dreamland.nightmare_skill1 dream_timer -1
scoreboard players set entity.dreamland.nightmare_skill2 dream_timer -1
scoreboard players set entity.dreamland.nightmare_skill3 dream_timer -1
scoreboard players set entity.dreamland.nightmare dream_counter 0
scoreboard players set entity.dreamland.nightmare_energy dream_counter 0
#bossbar
bossbar set dreamland:boss visible false