#黑洞吸积盘的生成
#if entity判断句用于性能优化

#TODO VIB 吸积盘特效的致命bug:可能因为是游戏的特性，导致当玩家远离黑洞到一定距离（60）左右时，会导致掉落沙的数量开始不断增加。即使已经设置了掉落沙的Time:600也是如此，掉落沙并没有被及时清除，可能是因为掉落沙没有渲染的问题。
#目前的暂时解决方案：去掉吸积盘
#可用的更优解决方案：当掉落沙的数量低于一定值的时候才生成吸积盘
#方案二（目前最优）：检测要生成的地方是否有掉落沙来作为是否生成掉落沙的依据。因为从视觉上看掉落沙似乎是仍在移动的
#未解答的问题：为什么掉落沙会越来越多，以及为什么在主世界测试时没有出现类似局面
#execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ run function dreamland:structure/black_hole/accretion_disk/dirt
#execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ rotated ~50 ~ run function dreamland:structure/black_hole/accretion_disk/dirt
#execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ rotated ~120 ~ run function dreamland:structure/black_hole/accretion_disk/stone
#execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ rotated ~175 ~ run function dreamland:structure/black_hole/accretion_disk/stone
#execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ run tp @s ~ ~5 ~ ~1 ~
#将玩家吸入黑洞
execute as @e[distance=0..100,tag=!dream_black_hole,type=!item] at @s facing entity @e[tag=dream_black_hole] eyes run tp @s ^ ^ ^0.1
execute as @e[distance=0..60,tag=!dream_black_hole,type=!item] at @s facing entity @e[tag=dream_black_hole] eyes run tp @s ^ ^ ^0.3
execute as @e[distance=0..20,tag=!dream_black_hole,type=!item] at @s facing entity @e[tag=dream_black_hole] eyes run tp @s ^ ^ ^0.5
execute as @e[distance=0..100,tag=!dream_black_hole,type=!item] run effect give @s levitation 2 255 false
execute as @e[distance=0..100,tag=!dream_black_hole,type=!item] run effect give @s slowness 1 127 false
#黑洞模型
execute as @e[tag=dream_black_hole] if score @s dream_counter matches 0 if score dream_blackhole_radius dream_counter matches 5..20 run function dreamland:structure/black_hole/model/size_1
execute as @e[tag=dream_black_hole] if score @s dream_counter matches 1 if score dream_blackhole_radius dream_counter matches 21..40 run function dreamland:structure/black_hole/model/size_2
execute as @e[tag=dream_black_hole] if score @s dream_counter matches 2 if score dream_blackhole_radius dream_counter matches 41..60 run function dreamland:structure/black_hole/model/size_3
execute as @e[tag=dream_black_hole] if score @s dream_counter matches 3 if score dream_blackhole_radius dream_counter matches 61..90 run function dreamland:structure/black_hole/model/size_4
execute as @e[tag=dream_black_hole] if score @s dream_counter matches 4 if score dream_blackhole_radius dream_counter matches 91.. run function dreamland:structure/black_hole/model/size_5
#成就
execute at @e[tag=dream_black_hole] run advancement grant @a[distance=0..100] only dreamland:beta/black_hole
#传送
execute at @e[tag=dream_black_hole] if entity @a[distance=0..4,tag=predicate.dreamland.has_dream_god_armor] run tag @a[distance=0..4,tag=predicate.dreamland.has_dream_god_armor] add predicate.dreamland.break_into_blackhole
execute as @a[tag=predicate.dreamland.break_into_blackhole] at @s run function dreamland:structure/black_hole/tp
#黑洞事件视界
execute if score dream_blackhole_radius dream_counter matches 5..20 run kill @e[type=!player,tag=!dream_black_hole,distance=0..3]
execute if score dream_blackhole_radius dream_counter matches 21..40 run kill @e[type=!player,tag=!dream_black_hole,distance=0..4]
execute if score dream_blackhole_radius dream_counter matches 41..60 run kill @e[type=!player,tag=!dream_black_hole,distance=0..6]
execute if score dream_blackhole_radius dream_counter matches 61..90 run kill @e[type=!player,tag=!dream_black_hole,distance=0..10]
execute if score dream_blackhole_radius dream_counter matches 91.. run kill @e[type=!player,tag=!dream_black_hole,distance=0..15]
execute as @a[tag=!predicate.dreamland.break_into_blackhole,distance=0..4] run damage @s 114514.0 dreamland:black_hole
#清空区域
execute as @e[tag=dream_black_hole] at @s rotated as @s run tp @s ~ ~ ~ ~0.2 ~
scoreboard players set dream_temp_s_b_c_start dream_counter 0
execute at @e[tag=dream_black_hole] rotated ~ ~ run function dreamland:structure/black_hole/clear/ray
scoreboard players set dream_temp_s_b_c_start dream_counter 0
execute at @e[tag=dream_black_hole] rotated ~90 ~ run function dreamland:structure/black_hole/clear/ray
scoreboard players set dream_temp_s_b_c_start dream_counter 0
execute at @e[tag=dream_black_hole] rotated ~180 ~ run function dreamland:structure/black_hole/clear/ray
scoreboard players set dream_temp_s_b_c_start dream_counter 0
execute at @e[tag=dream_black_hole] rotated ~270 ~ run function dreamland:structure/black_hole/clear/ray