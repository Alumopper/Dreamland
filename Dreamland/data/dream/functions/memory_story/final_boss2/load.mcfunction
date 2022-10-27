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