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
#模式修改
execute as @a[gamemode=survival] run gamemode adventure @s
#难度设置
difficulty easy
#效果
effect give @a regeneration 8 127 false
effect give @a regeneration 114514 1 false
#世界边界修改
worldborder center 495 495
worldborder set 60
worldborder set 30 5
worldborder warning distance 0
#正式开始
schedule function dream:memory_story/final_boss2/qwq 8s