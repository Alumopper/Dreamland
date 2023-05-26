#气球史莱姆的移动
execute if entity @a[distance=0..4.5] at @s run function dreamland:entity/balloon_slime/move
#气球史莱姆模型设置
effect give @s invisibility 1 0 true
#蓝色史莱姆的寿命
scoreboard players add @s dream_timer 1
execute if score @s dream_timer matches 300.. at @s run function dreamland:entity/balloon_slime/death