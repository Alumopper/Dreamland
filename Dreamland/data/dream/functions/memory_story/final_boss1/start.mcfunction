execute as @a at @s run playsound dreamland:entity.finalboss.bgm master @s ~ ~ ~
#玩家跟踪器
execute as @a at @s run function dream:memory_story/final_boss1/tracker
#boss条
bossbar set dream:boss color purple
bossbar set dream:boss max 3919
bossbar set dream:boss value 3919
bossbar set dream:boss name {"translate":"dream.name.boss.dream"}
bossbar set dream:boss visible true
bossbar set dream:boss players @a
#技能计时器启动
scoreboard players set dream_finalboss1_skilltimer dream_timer 0
#开始
difficulty hard