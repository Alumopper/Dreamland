#黑洞吸积盘的生成
#if entity判断句用于性能优化

#TBD VIB 吸积盘特效的致命bug:可能因为是游戏的特性，导致当玩家远离黑洞到一定距离（60）左右时，会导致掉落沙的数量开始不断增加。即使已经设置了掉落沙的Time:600也是如此，掉落沙并没有被及时清除，可能是因为掉落沙没有渲染的问题。
#目前的暂时解决方案：adm性能安全机制触发强制清除掉落沙
#可用的更优解决方案：当掉落沙的数量低于一定值的时候才生成吸积盘
#方案二（目前最优）：检测要生成的地方是否有掉落沙来作为是否生成掉落沙的依据。因为从视觉上看掉落沙似乎是仍在移动的
#未解答的问题：为什么掉落沙会越来越多，以及为什么在主世界测试时没有出现类似局面
execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ run function dream:structure/black_hole/accretion_disk/dirt
execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ rotated ~50 ~ run function dream:structure/black_hole/accretion_disk/dirt
execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ rotated ~120 ~ run function dream:structure/black_hole/accretion_disk/stone
execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ rotated ~175 ~ run function dream:structure/black_hole/accretion_disk/stone
execute as @e[tag=dream_black_hole] at @s if entity @a[distance=0..70] positioned ~ ~-5 ~ run tp @s ~ ~5 ~ ~1 ~
#将玩家吸入黑洞
execute as @e[tag=dream_black_hole] at @s positioned ~ ~-5 ~ as @e[distance=0..20,tag=!dream_black_hole] at @s facing entity @e[tag=dream_black_hole] eyes run tp @s ^ ^ ^0.3
execute as @e[tag=dream_black_hole] at @s positioned ~ ~-5 ~ as @e[distance=0..20,tag=!dream_black_hole] run effect give @s levitation 2 255 false
execute as @e[tag=dream_black_hole] at @s positioned ~ ~-5 ~ as @e[distance=0..20,tag=!dream_black_hole] run effect give @s slowness 1 127 false
execute at @e[tag=dream_black_hole] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 black_concrete
#成就
execute at @e[tag=dream_black_hole] run advancement grant @a[distance=0..70] only dream:beta/black_hole
#传送TBD:传送位置待定
execute at @e[tag=dream_black_hole] if entity @a[distance=0..4] run function dream:structure/black_hole/tp