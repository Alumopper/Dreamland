#移动魔法球
execute as @e[tag=entity.dream.magicball.pure] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=entity.dream.magicball.boss] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=entity.dream.magicball.chaos] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=entity.dream.magicball.weak] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=entity.dream.magicball.speed] at @s run tp @s ^ ^ ^0.5
#end魔法球的追踪
execute as @e[tag=entity.dream.magicball.end] at @s facing entity @e[type=#dream:enemy,distance=0..75,limit=1,sort=nearest] eyes run tp ^ ^ ^0.6
#为魔法球添加粒子特效
execute at @e[tag=entity.dream.magicball.pure] run particle dust 0.24313725490196078 0.7843137254901961 1 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=entity.dream.magicball.boss] run particle dust 0.784 0.243 1 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=entity.dream.magicball.chaos] run particle dust 1 0.9294117647058824 0.30980392156862746 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=entity.dream.magicball.weak] run particle dust 0.51 0.969 0.369 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=entity.dream.magicball.cryst.fire] run particle dust 1 0.341 0.227 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=entity.dream.magicball.cryst.natural] run particle dust 0.208 0.565 0 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=entity.dream.magicball.cryst.water] run particle dust 0.059 0.263 0.925 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=entity.dream.magicball.cryst.void] run particle dust 0.553 0.553 0.553 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=entity.dream.magicball.cryst.ender] run particle dust 0.463 0.11 0.925 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=entity.dream.magicball.end] run particle dust 0.463 0.11 0.925 1 ~ ~ ~ 0.1 0.1 0.1 0 10
#为魔法球添加伤害效果
execute at @e[tag=entity.dream.magicball.pure] as @e[type=#dream:undead_mobs,distance=0..1.5] run effect give @s instant_health 1 0 false
execute at @e[tag=entity.dream.magicball.pure] as @e[type=#dream:enemy,distance=0..1.5] if entity @s[type=!#dream:undead_mobs] run effect give @s instant_damage 1 0 false
execute at @e[tag=entity.dream.magicball.end] as @e[type=#dream:undead_mobs,distance=0..1.5] run effect give @s instant_health 1 0 false
execute at @e[tag=entity.dream.magicball.end] as @e[type=#dream:enemy,distance=0..1.5] if entity @s[type=!#dream:undead_mobs] run effect give @s instant_damage 1 0 false
execute at @e[tag=entity.dream.magicball.chaos] as @e[type=#dream:undead_mobs,distance=0..2] run effect give @s instant_health 1 1 false
execute at @e[tag=entity.dream.magicball.chaos] as @e[type=!#dream:undead_mobs,type=!minecraft:player,distance=0..2] run effect give @s instant_damage 1 1 false
execute at @e[tag=entity.dream.magicball.boss] as @a[distance=0..2.0] run effect give @s instant_damage 1 1 false
execute at @e[tag=entity.dream.magicball.weak,tag=dream_player_friendly] as @e[distance=0..2.0,type=#dream:enemy] run effect give @s poison 3 2 false
execute at @e[tag=entity.dream.magicball.weak,tag=!dream_player_friendly] as @a[distance=0..2.0] run effect give @s poison 3 2 false
execute at @e[tag=entity.dream.magicball_poison] as @e[type=#dream:enemy,distance=0..2] run effect give @s poison 10 2 false
#魔法球的额外效果
execute as @e[tag=entity.dream.magicball.cryst.fire] at @s run function dream:items/wand_crystal/add/fire
execute as @e[tag=entity.dream.magicball.cryst.natural] at @s run function dream:items/wand_crystal/add/natural
execute as @e[tag=entity.dream.magicball.cryst.water] at @s run function dream:items/wand_crystal/add/water
execute as @e[tag=entity.dream.magicball.cryst.void] at @s run function dream:items/wand_crystal/add/void
execute as @e[tag=entity.dream.magicball.cryst.ender,tag=!entity.dream.magicball.cryst.ender_used] at @s run function dream:items/wand_crystal/add/ender
execute as @e[tag=entity.dream.magicball.end] at @s if entity @e[distance=0..1.5,type=#dream:enemy] run kill @s
#魔法球挖掘虚空矿
execute at @e[tag=entity.dream.magicball.chaos] as @e[tag=block.dream.void_ore,distance=0..1.5] at @s run function dream:entity/void_ore/dig
execute at @e[tag=entity.dream.magicball.pure] as @e[tag=block.dream.void_ore,distance=0..1] at @s run function dream:entity/void_ore/dig