#初始化
#boss条
bossbar set dream:boss name ["---<",{"translate":"dream.name.boss.nightmare"},">---"]
bossbar set dream:boss color purple
bossbar set dream:boss max 400
bossbar set dream:boss value 0
bossbar set dream:boss visible true
bossbar set dream:boss players @a
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