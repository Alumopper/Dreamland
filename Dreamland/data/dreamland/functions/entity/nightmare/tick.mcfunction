#护盾动画效果
execute as @e[tag=entity.dream.nightmare_shield] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=entity.dream.nightmare_shield] at @s run function dreamland:particle/nightmare_boss/sheild/start
#防御塔的凋零攻击效果
execute as @e[tag=entity.dream.nightmare_defend_tower] at @s run effect give @a[distance=0..10] wither 1 3
execute as @e[tag=entity.dream.nightmare_defend_tower] at @s as @a[distance=0..10] align xyz positioned ~0.5 ~5.8 ~0.5 facing entity @s eyes run function dreamland:entity/nightmare/skills/funcs/tower_ray
#护盾扣血
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ if entity @e[type=arrow,distance=0..2.5] run scoreboard players remove entity.dream.nightmare_shield_hp dream_counter 9
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ if entity @e[tag=entity.dream.magicball.pure,distance=0..2.5] run scoreboard players remove entity.dream.nightmare_shield_hp dream_counter 5
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ if entity @e[tag=entity.dream.magicball.chaos,distance=0..2.5] run scoreboard players remove entity.dream.nightmare_shield_hp dream_counter 8
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ if entity @e[type=egg,distance=0..2.5] run scoreboard players remove entity.dream.nightmare_shield_hp dream_counter 1
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ if entity @e[type=snowball,distance=0..2.5] run scoreboard players remove entity.dream.nightmare_shield_hp dream_counter 1
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ as @e[type=!player,tag=!entity.dream.nightmare_p,tag=!entity.dream.nightmare,distance=0..2.5] at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 10
execute at @e[tag=entity.dream.nightmare_shield] positioned ~ ~-1 ~ run kill @e[type=!player,tag=!entity.dream.nightmare_p,tag=!entity.dream.nightmare,distance=0..2.5]
#检测护盾血量
execute if score entity.dream.nightmare_shield_hp dream_counter matches ..-1 unless score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] run function dreamland:entity/nightmare/stage3
execute if score entity.dream.nightmare_shield_hp dream_counter matches ..-1 if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] run function dreamland:entity/nightmare/skills/funcs/3_sp
#血量显示
execute if entity @e[tag=entity.dream.nightmare_shield] run bossbar set dreamland:boss name ["---<",{"translate":"dream.name.boss.nightmare"},"     HP:",{"score":{"objective": "dream_counter","name": "entity.dream.nightmare_shield_hp"}},">---"]
execute if entity @e[tag=entity.dream.nightmare_shield] store result bossbar dreamland:boss value run scoreboard players get entity.dream.nightmare_shield_hp dream_counter
execute unless entity @e[tag=entity.dream.nightmare_shield] run bossbar set dreamland:boss name ["---<",{"translate":"dream.name.boss.nightmare"},"     HP:",{"score":{"objective": "dream_counter","name": "entity.dream.nightmare"}},">---"]
execute unless entity @e[tag=entity.dream.nightmare_shield] store result bossbar dreamland:boss value run scoreboard players get entity.dream.nightmare dream_counter
#闪电移动
execute as @e[tag=entity.dream.nightmare_lightning_summon] at @s run function dreamland:entity/nightmare/skills/funcs/summon_lightninng
#不能近身
execute at @e[tag=entity.dream.nightmare] run effect give @a[distance=0..9] wither 5 4 
#梦魇受到远程伤害
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ if entity @e[type=arrow,distance=0..2] run scoreboard players remove entity.dream.nightmare dream_counter 5
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ if entity @e[tag=entity.dream.magicball.pure,distance=0..2] run scoreboard players remove entity.dream.nightmare dream_counter 7
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ if entity @e[tag=entity.dream.magicball.chaos,distance=0..2] run scoreboard players remove entity.dream.nightmare dream_counter 12
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ if entity @e[tag=entity.dream.magicball.pure,distance=0..2] run scoreboard players remove entity.dream.nightmare dream_counter 2
execute if entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ if entity @e[tag=entity.dream.magicball.chaos,distance=0..2] run scoreboard players remove entity.dream.nightmare dream_counter 3
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ as @e[type=!player,tag=!entity.dream.nightmare,distance=0..2,tag=!entity.dream.nightmare_p] at @s run particle damage_indicator ~ ~1 ~ 0.1 0.1 0.1 0.1 10
execute unless entity @e[tag=entity.dream.nightmare_shield] if score entity.dream.nightmare_skill3 dream_timer matches 0..3600 at @e[tag=entity.dream.nightmare] positioned ~ ~1 ~ run kill @e[type=!player,tag=!entity.dream.nightmare_p,tag=!entity.dream.nightmare,distance=0..2]
#梦魇视角
execute as @e[tag=entity.dream.nightmare] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
#旋转
execute as @e[tag=entity.dream.nightmare_rotation] at @s run tp @s ~ ~ ~ ~2.5 ~
#子弹
execute as @e[tag=entity.dream.nightmare_bullet] at @s run tp @s ^ ^ ^0.5
execute at @e[tag=entity.dream.nightmare_bullet] run particle dust 0.467 0.008 0.467 2 ~ ~ ~ 0.1 0.1 0.1 100.0 2
execute as @e[tag=entity.dream.nightmare_bullet] at @s unless entity @e[tag=entity.dream.nightmare,distance=0..50] run kill @s
execute at @e[tag=entity.dream.nightmare_bullet] positioned ~ ~10 ~ run function dreamland:entity/nightmare/skills/funcs/bullet
#梦魇本体血量检测
execute if score entity.dream.nightmare dream_counter matches ..300 if score entity.dream.nightmare_skill3 dream_timer matches 0..2000 at @e[tag=entity.dream.nightmare] run function dreamland:entity/nightmare/skills/skill3_sp
execute if score entity.dream.nightmare dream_counter matches ..-1 unless score entity.dream.nightmare_skill3 dream_timer matches 0..2000 at @e[tag=entity.dream.nightmare] run function dreamland:entity/nightmare/skills/skill3_sp3
#史莱姆和岩浆怪
execute at @e[tag=entity.dream.nightmare_slime] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace packed_ice
#检测玩家存活情况
execute unless entity @e[type=player,predicate=dreamland:if_entity/in_the_end_of_dream] run function dreamland:entity/nightmare/death