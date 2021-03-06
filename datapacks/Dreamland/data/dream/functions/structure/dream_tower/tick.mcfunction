#bossbar
execute as @e[tag=dream_boss1] store result bossbar dream:boss value run data get entity @e[tag=dream_boss1,limit=1] Health
execute store result score @e[tag=dream_boss1] dream_boss_hp run data get entity @e[tag=dream_boss1,limit=1] Health
#检测boss阶段
#初始阶段 150-200
execute if entity @e[tag=dream_boss1,scores={dream_boss_hp=150..200}] run tag @e[tag=dream_boss1] remove dream_boss1_just
#第一阶段 100-150
execute if entity @e[tag=dream_boss1,scores={dream_boss_hp=0..150}] run tag @e[tag=dream_boss1] add dream_bossstage1
execute if entity @e[tag=dream_boss1,scores={dream_boss_hp=0..150}] if score dream_boss1_skillcd1 dream_timer matches -1 run scoreboard players set dream_boss1_skillcd1 dream_timer 0
execute unless entity @e[tag=dream_boss1,scores={dream_boss_hp=0..150}] run scoreboard players set dream_boss1_skillcd1 dream_timer -1
#第二阶段 50-100 第二阶段刚开始时发动技能二(bossskill2.mcf)
execute as @e[tag=dream_boss1,tag=dream_boss1_skill2] in dream:sweetdream run function dream:structure/dream_tower/bossskill2
execute as @e[tag=dream_boss1,scores={dream_boss_hp=0..100},tag=!dream_boss1_just] in dream:sweetdream run function dream:structure/dream_tower/bossskill2
execute if entity @e[tag=dream_boss1,scores={dream_boss_hp=0..100}] run tag @e[tag=dream_boss1] add dream_bossstage2
execute unless entity @e[tag=dream_boss1,scores={dream_boss_hp=0..100}] run tag @e[tag=dream_boss1] remove dream_bossstage2
#第三阶段 0-50
execute as @e[tag=dream_boss1,scores={dream_boss_hp=0..50}] at @s run effect give @a[distance=0..2] blindness 2 1 false
execute as @e[tag=dream_boss1,scores={dream_boss_hp=0..50}] at @s run effect give @a[distance=0..1] poison 1 1 false
execute as @e[tag=dream_boss1,scores={dream_boss_hp=0..50}] at @s run effect give @e[tag=dream_boss1,scores={dream_boss_hp=0..30}] strength 1 1 false
#检测玩家是否还在附近
execute as @e[tag=dream_boss1] at @s unless entity @a[distance=0..60] run tp @s ~ -30 ~
execute as @e[tag=dream_boss1] at @s unless entity @a[distance=0..60] run scoreboard players set dream_if_kill_boss1 dream_counter 0
execute as @e[tag=dream_boss1] at @s unless entity @a[distance=0..60] run function dream:structure/dream_tower/end
execute as @e[tag=dream_boss1] at @s unless entity @a[distance=0..60] run kill @s
scoreboard players set dream_if_kill_boss1 dream_counter 1
#检测Boss是否存活
execute as @a[tag=dream_fighting_boss1] unless entity @e[tag=dream_boss1] if score dream_gamestage dream_counter matches 1 run function dream:structure/dream_tower/end
#检测玩家是否进入Boss区
execute as @p at @p if entity @a[x=-10,y=181,z=-10,dx=20,dy=3,dz=20] if score dream_dreamtowerboss_pre dream_timer matches -1 run scoreboard players set dream_dreamtowerboss_pre dream_timer 0
execute as @p at @p if entity @a[x=-3,y=181,z=-3,dx=6,dy=3,dz=6] if score dream_dreamtowerboss_pre dream_timer matches -2 run scoreboard players set dream_dreamtowerboss_pre dream_timer 131
#为正在释放技能的Boss添加粒子效果
execute as @e[tag=dream_boss1_particle_marker] if score dream_boss1_skillcd2 dream_timer matches 60..180 at @s run particle dust 0.792 0.039 0.98 1 ^ ^ ^2 0.1 0.1 0.1 0.0 5
execute as @e[tag=dream_boss1_particle_marker] if score dream_boss1_skillcd2 dream_timer matches 60..180 at @s run particle dust 0.792 0.039 0.98 1 ^ ^ ^-2 0.1 0.1 0.1 0.0 5
execute as @e[tag=dream_boss1_particle_marker] if score dream_boss1_skillcd2 dream_timer matches 60..180 at @s run tp @s ~ ~ ~ ~4 ~
#设置Boss条标题以显示血量
execute as @e[tag=dream_boss1] run bossbar set dream:boss name ["---<",{"translate":"dream.name.dream_tower.boss"},"     HP:",{"score":{"objective": "dream_boss_hp","name": "@s"}},">---"]
#当凋零骷髅存在时给予Boss抗性提升的效果
execute as @e[tag=dream_boss1] if entity @e[type=wither_skeleton] run effect give @s resistance 1 1
#漂浮
execute positioned 0 55 0 in dream:sweetdream run effect give @a[distance=0..3] levitation 1 5 true
