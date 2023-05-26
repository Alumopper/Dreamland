#初始化
#boss条
bossbar set dreamland:boss name ["---<",{"translate":"dream.name.boss.nightmare"},">---"]
bossbar set dreamland:boss color purple
bossbar set dreamland:boss max 400
bossbar set dreamland:boss value 0
bossbar set dreamland:boss visible true
bossbar set dreamland:boss players @a
#启用计时器
scoreboard players set entity.dream.nightmare_skill1 dream_timer 0
scoreboard players set entity.dream.nightmare_skill2 dream_timer -1
scoreboard players set entity.dream.nightmare_skill3 dream_timer -1
#去除以前的
kill @e[tag=entity.dream.nightmare]
kill @e[tag=entity.dream.nightmare_shield]
#表示进入战斗
tag @a add dream_fight_nightmare
#如果是重新开始则去除重新开始的标志
tag @a remove entity.dream.nightmare_wait_to_restart