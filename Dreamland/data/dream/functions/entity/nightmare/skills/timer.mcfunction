#梦魇的技能专用计时器
#阶段一持续20s(400ticks)
execute if score entity.dream.nightmare_skill1 dream_timer matches 0.. run scoreboard players add entity.dream.nightmare_skill1 dream_timer 1
execute if score entity.dream.nightmare_skill2 dream_timer matches 0.. run scoreboard players add entity.dream.nightmare_skill2 dream_timer 1
execute if score entity.dream.nightmare_skill3 dream_timer matches 0.. run scoreboard players add entity.dream.nightmare_skill3 dream_timer 1

execute if score entity.dream.nightmare_skill1 dream_timer matches 20 in dream:the_end_of_dream run function dream:entity/nightmare/skills/skill1_1
execute if score entity.dream.nightmare_skill1 dream_timer matches 50 in dream:the_end_of_dream run function dream:entity/nightmare/skills/skill1_2
execute if score entity.dream.nightmare_skill1 dream_timer matches 150 in dream:the_end_of_dream run function dream:entity/nightmare/skills/skill1_2
execute if score entity.dream.nightmare_skill1 dream_timer matches 220 in dream:the_end_of_dream run function dream:entity/nightmare/skills/skill1_1
execute if score entity.dream.nightmare_skill1 dream_timer matches 250 in dream:the_end_of_dream run function dream:entity/nightmare/skills/skill1_2
execute if score entity.dream.nightmare_skill1 dream_timer matches 350 in dream:the_end_of_dream run function dream:entity/nightmare/skills/skill1_2
execute if score entity.dream.nightmare_skill1 dream_timer matches 0..401 as @a positioned 0 70 0 unless entity @s[distance=0..22] run effect give @s wither 1 1
execute if score entity.dream.nightmare_skill1 dream_timer matches 0..401 in dream:the_end_of_dream positioned 0 75 0 rotated 0 0 run function dream:particle/nightmare_boss/1/start
execute if score entity.dream.nightmare_skill1 dream_timer matches 0..401 store result bossbar dream:boss value run scoreboard players get entity.dream.nightmare_skill1 dream_timer
execute if score entity.dream.nightmare_skill1 dream_timer matches 0..401 unless entity @e[type=player,predicate=dream:if_entity/in_the_end_of_dream] run function dream:entity/nightmare/death
execute if score entity.dream.nightmare_skill1 dream_timer matches 401 run scoreboard players set entity.dream.nightmare_skill2 dream_timer 0
execute if score entity.dream.nightmare_skill1 dream_timer matches 401 in dream:the_end_of_dream positioned 0 70 0 run function dream:entity/nightmare/stage2
execute if score entity.dream.nightmare_skill1 dream_timer matches 401 run scoreboard players set entity.dream.nightmare_skill1 dream_timer -1
#二阶段150hp
execute if score entity.dream.nightmare_skill2 dream_timer matches 100 at @e[tag=entity.dream.nightmare] run function dream:entity/nightmare/skills/skill1_1
execute if score entity.dream.nightmare_skill2 dream_timer matches 200 at @e[tag=entity.dream.nightmare] run function dream:entity/nightmare/skills/skill2_1
execute if score entity.dream.nightmare_skill2 dream_timer matches 400 at @e[tag=entity.dream.nightmare] positioned 0 70 0 run function dream:entity/nightmare/skills/skill2_2
execute if score entity.dream.nightmare_skill2 dream_timer matches 600 at @a run function dream:entity/nightmare/skills/skill2_3
execute if score entity.dream.nightmare_skill2 dream_timer matches 800..1000 at @a run function dream:entity/nightmare/skills/skill2_4
execute if score entity.dream.nightmare_skill2 dream_timer matches 1100 at @a run function dream:entity/nightmare/skills/skill2_5
execute if score entity.dream.nightmare_skill2 dream_timer matches 1200.. run scoreboard players set entity.dream.nightmare_skill2 dream_timer 0

#三阶段 前半300hp
execute if score entity.dream.nightmare_skill3 dream_timer matches 0..300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^ ^ ^2 0.1 0.1 0.1 0.1 4
execute if score entity.dream.nightmare_skill3 dream_timer matches 0..300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^ ^ ^-2 0.1 0.1 0.1 0.1 4
execute if score entity.dream.nightmare_skill3 dream_timer matches 0..300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^2 ^ ^ 0.1 0.1 0.1 0.1 4
execute if score entity.dream.nightmare_skill3 dream_timer matches 0..300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^-2 ^ ^ 0.1 0.1 0.1 0.1 4
execute if score entity.dream.nightmare_skill3 dream_timer matches 100..300 at @e[tag=entity.dream.nightmare_rotation] unless entity @e[tag=entity.dream.nightmare_bullet,distance=0..3.2] run function dream:entity/nightmare/skills/skill3_3
execute if score entity.dream.nightmare_skill3 dream_timer matches 301..600 at @e[tag=entity.dream.nightmare_rotation] run function dream:entity/nightmare/skills/skill3_4
execute if score entity.dream.nightmare_skill3 dream_timer matches 700 at @e[tag=entity.dream.nightmare_rotation] run function dream:entity/nightmare/skills/skill3_5
execute if score entity.dream.nightmare_skill3 dream_timer matches 800 at @a run function dream:entity/nightmare/skills/skill3_6
execute if score entity.dream.nightmare_skill3 dream_timer matches 1100 at @a run function dream:entity/nightmare/skills/skill3_6
execute if score entity.dream.nightmare_skill3 dream_timer matches 800..1400 at @e[tag=entity.dream.nightmare_rotation] run function dream:entity/nightmare/skills/funcs/3_6
execute if score entity.dream.nightmare_skill3 dream_timer matches 801 at @e[tag=entity.dream.nightmare_lava_placer] run setblock ~ ~ ~ lava
execute if score entity.dream.nightmare_skill3 dream_timer matches 1101 at @e[tag=entity.dream.nightmare_lava_placer] run setblock ~ ~ ~ lava
execute if score entity.dream.nightmare_skill3 dream_timer matches 1300 at @a run function dream:entity/nightmare/skills/skill3_7
execute if score entity.dream.nightmare_skill3 dream_timer matches 1400 at @e[tag=entity.dream.nightmare_lava_placer] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace lava
execute if score entity.dream.nightmare_skill3 dream_timer matches 1400..1500 at @a run function dream:entity/nightmare/skills/skill3_8
execute if score entity.dream.nightmare_skill3 dream_timer matches 1400..1500 at @e[tag=entity.dream.nightmare_rotation] run function dream:entity/nightmare/skills/funcs/3_8
execute if score entity.dream.nightmare_skill3 dream_timer matches 1400 at @e[tag=entity.dream.nightmare_rotation] run function dream:entity/nightmare/skills/skill3_1
execute if score entity.dream.nightmare_skill3 dream_timer matches 1700 at @e[tag=entity.dream.nightmare_rotation] run function dream:entity/nightmare/skills/skill3_2
execute if score entity.dream.nightmare_skill3 dream_timer matches 2000 run scoreboard players set entity.dream.nightmare_skill3 dream_timer 0

#三阶段 护盾100hp

execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2200 run function dream:entity/nightmare/skills/skill2_2 
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2400 run function dream:entity/nightmare/skills/skill2_1
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2200..2300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^ ^ ^2 0.1 0.1 0.1 0.1 4
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2200..2300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^ ^ ^-2 0.1 0.1 0.1 0.1 4
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2200..2300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^2 ^ ^ 0.1 0.1 0.1 0.1 4
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2200..2300 at @e[tag=entity.dream.nightmare_rotation] run particle dust 0.467 0.008 0.467 1 ^-2 ^ ^ 0.1 0.1 0.1 0.1 4
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2300..2600 at @e[tag=entity.dream.nightmare_rotation] unless entity @e[tag=entity.dream.nightmare_bullet,distance=0..3.2] run function dream:entity/nightmare/skills/skill3_3
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2750.. run scoreboard players set entity.dream.nightmare_skill3 dream_timer 2001
#三阶段 后半200hp
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2080 run bossbar set dream:boss color white
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2100 at @e[tag=entity.dream.nightmare] run function dream:entity/nightmare/skills/skill3_5
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2180 run bossbar set dream:boss color red
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2200 at @a run function dream:entity/nightmare/skills/skill3_9
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2380 run bossbar set dream:boss color purple
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2400 at @e[tag=entity.dream.nightmare] run function dream:entity/nightmare/skills/skill3_10
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2480 run bossbar set dream:boss color green
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2500 at @a run function dream:entity/nightmare/skills/skill3_11
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2780 run bossbar set dream:boss color red
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2800..3000 at @a run function dream:entity/nightmare/skills/skill3_12
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 3080 run bossbar set dream:boss color yellow
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 3100 at @a run function dream:entity/nightmare/skills/skill3_13
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 3480 run bossbar set dream:boss color red
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 3480 at @e[tag=entity.dream.nightmare] run function dream:entity/nightmare/skills/skill3_1
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 3600.. run scoreboard players set entity.dream.nightmare_skill3 dream_timer 2001
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 2001..3600 as @a at @s if block ~ ~-1 ~ packed_ice run effect give @s slowness 1 1