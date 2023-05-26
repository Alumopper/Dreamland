particle dust 0.094 0.745 0.945 0.75 ~ ~ ~ 0.2 0.2 0.2 0.1 10
tp @s ~ -100 ~
scoreboard players reset @s dream_timer
kill @s
#删除模型
kill @e[tag=entity.dreamland.balloon_slime_model,distance=0..2,limit=1,sort=nearest]