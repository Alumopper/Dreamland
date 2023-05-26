execute as @a at @s run playsound dreamland:entity.finalboss.bgm master @s ~ ~ ~
#玩家跟踪器
execute as @a at @s run function dreamland:memory_story/final_boss1/tracker
#boss条
bossbar set dreamland:boss color purple
bossbar set dreamland:boss max 3919
bossbar set dreamland:boss value 3919
bossbar set dreamland:boss name {"translate":"dreamland.name.boss.dream"}
bossbar set dreamland:boss visible true
bossbar set dreamland:boss players @a
#技能计时器启动
scoreboard players set dream_finalboss1_skilltimer dream_timer 0
#开始
difficulty hard