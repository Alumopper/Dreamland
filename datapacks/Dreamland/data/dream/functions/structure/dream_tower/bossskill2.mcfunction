#当boss血量到半血以下时发动的技能
#技能计时
execute if score dream_boss1_skillcd2 dream_timer matches -1 run scoreboard players set dream_boss1_skillcd2 dream_timer 0
execute if score dream_boss1_skillcd2 dream_timer matches 0 in dream:sweetdream run tp @s 0 188 0
execute if score dream_boss1_skillcd2 dream_timer matches 0 run tag @s add dream_boss1_skill2
#展示粒子效果
execute if score dream_boss1_skillcd2 dream_timer matches 0 at @s run summon armor_stand ~ ~ ~ {Invisible:true,Tags:[dream_boss1_particle_marker]}
#将淡蓝色玻璃变成紫色的
execute if score dream_boss1_skillcd2 dream_timer matches 0 at @s run fill 12 184 12 -12 176 -12 purple_stained_glass replace light_blue_stained_glass
#盯着玩家
execute if score dream_boss1_skillcd2 dream_timer matches 0..209 at @s run tp @s ~ ~ ~ facing entity @p
#弹幕攻击I
#第一组
execute if score dream_boss1_skillcd2 dream_timer matches 0 at @s facing entity @p eyes run particle dust 0.773 0.027 0.961 1 0 181 0 5 0.1 0.1 0.0 100 
execute if score dream_boss1_skillcd2 dream_timer matches 10 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 15 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 20 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 25 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 30 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
#第二组
execute if score dream_boss1_skillcd2 dream_timer matches 60 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 65 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 70 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 75 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 80 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
#第三组
execute if score dream_boss1_skillcd2 dream_timer matches 110 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 115 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 120 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 125 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 130 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
#第四组
execute if score dream_boss1_skillcd2 dream_timer matches 160 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 165 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 170 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 175 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
execute if score dream_boss1_skillcd2 dream_timer matches 180 at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
#弹幕攻击II
execute if score dream_boss1_skillcd2 dream_timer matches 60..180 as @e[tag=dream_boss1_particle_marker] positioned 0 181 0 rotated as @s rotated ~ ~ run function dream:structure/dream_tower/ray
execute if score dream_boss1_skillcd2 dream_timer matches 60..180 as @e[tag=dream_boss1_particle_marker] positioned 0 181 0 rotated as @s rotated ~180 ~ run function dream:structure/dream_tower/ray
#技能结束
execute if score dream_boss1_skillcd2 dream_timer matches 260.. run tag @s add dream_boss1_just
execute if score dream_boss1_skillcd2 dream_timer matches 260.. run kill @e[tag=dream_boss1_particle_marker]
execute if score dream_boss1_skillcd2 dream_timer matches 260.. at @s run tp @s ~ ~-2 ~
execute if score dream_boss1_skillcd2 dream_timer matches 260.. in dream:sweetdream run summon wither_skeleton 4 181 4 {Attributes:[{Name:"minecraft:generic.max_health",Base:10.0}]}
execute if score dream_boss1_skillcd2 dream_timer matches 260.. in dream:sweetdream run summon wither_skeleton -4 181 4 {Attributes:[{Name:"minecraft:generic.max_health",Base:10.0}]}
execute if score dream_boss1_skillcd2 dream_timer matches 260.. in dream:sweetdream run summon wither_skeleton 4 181 -4 {Attributes:[{Name:"minecraft:generic.max_health",Base:10.0}]}
execute if score dream_boss1_skillcd2 dream_timer matches 260.. in dream:sweetdream run summon wither_skeleton -4 181 -4 {Attributes:[{Name:"minecraft:generic.max_health",Base:10.0}]}
effect give @e[type=wither_skeleton] speed 20 1 false
effect give @e[type=wither_skeleton] weakness 20 0 false
execute if score dream_boss1_skillcd2 dream_timer matches 260.. run tag @s remove dream_boss1_skill2
execute if score dream_boss1_skillcd2 dream_timer matches 260.. run scoreboard players set dream_boss1_skillcd2 dream_timer -1