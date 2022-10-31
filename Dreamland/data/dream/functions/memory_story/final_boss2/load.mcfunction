function finalboss_ani:install
#boss栏
bossbar set dream:boss color green
bossbar set dream:boss max 150
bossbar set dream:boss value 150
bossbar set dream:boss style notched_6
bossbar set dream:boss players @a
bossbar set dream:boss visible true
bossbar set dream:boss name "U3lzdGVtLmNvcmU="
#玩家血量修改
execute as @a run attribute @s minecraft:generic.max_health base set 150
#生成实体
execute in dream:memory_abyss positioned 495 98 495 run function dream:memory_story/final_boss2/summon
#
scoreboard players set dream_finalstorystage dream_counter 3
#
difficulty easy
#
effect give @a regeneration 7 127 true