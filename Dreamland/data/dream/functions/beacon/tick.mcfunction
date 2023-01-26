#0-生命恢复
execute if score @s dream_beacon matches 0 run particle dust 0.9215686274509803 0.4588235294117647 0.6352941176470588 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 0 run effect give @a regeneration 30 2 false
#1-力量
execute if score @s dream_beacon matches 1 run particle dust 1 0 0 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 1 run effect give @a strength 30 2 false
#2-速度
execute if score @s dream_beacon matches 2 run particle dust 0.40784313725490196 0.8627450980392157 1 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 2 run effect give @a speed 30 2 false
#3-跳跃提升
execute if score @s dream_beacon matches 3 run particle dust 0.5333333333333333 1 0.4392156862745098 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 3 run effect give @a jump_boost 30 2 false
#4-生命提升
execute if score @s dream_beacon matches 4 run particle dust 0.9215686274509803 0.4588235294117647 0.4588235294117647 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 4 run effect give @a health_boost 30 2 false
#5-抗性提升
execute if score @s dream_beacon matches 5 run particle dust 0.9490196078431372 0.9607843137254902 0.3411764705882353 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 5 run effect give @a resistance 30 2 false
#6-救赎（把僵尸村民变为村民）
execute if score @s dream_beacon matches 6 run particle dust 0.9607843137254902 0.3411764705882353 0.9607843137254902 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 6 as @e[type=zombie_villager,distance=0..30] at @s run function dream:beacon/cure
#7-杀戮
execute if score @s dream_beacon matches 7 run particle dust 1 0 0 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 7 run effect give @e[type=#dream:enemy,distance=0..30] wither 5 2
#8-夜视
execute if score @s dream_beacon matches 8 run particle dust 0.6392156862745098 0.396078431372549 0.9529411764705882 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 8 run effect give @a night_vision 30 2 false
#9-水下呼吸
execute if score @s dream_beacon matches 9 run particle dust 0.4588235294117647 0.5686274509803921 0.9215686274509803 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 9 run effect give @a water_breathing 30 2 false
#10-急迫
execute if score @s dream_beacon matches 10 run particle dust 0.9686274509803922 0.8352941176470589 0.2549019607843137 1 ~ ~1.5 ~ 0.1 0.1 0.1 0 5
execute if score @s dream_beacon matches 10 run effect give @a haste 30 2 false
#检测上方是否有激活物品（梦能核心）
execute if entity @e[type=item,distance=..1.5,nbt={Item:{tag:{tag:{id:"dreamland:dream_power_core"}}}}] run function dream:beacon/gui
#挖掘梦境信标
execute unless block ~ ~ ~ barrier run kill @s