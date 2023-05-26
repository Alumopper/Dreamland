#魔法球能量损耗
    scoreboard players remove @s dream_magicball_energy 1 
#移动魔法球
    execute if entity @s[tag=entity.dreamland.magicball.pure] run tp @s ^ ^ ^0.6
    execute if entity @s[tag=entity.dreamland.magicball.boss] run tp @s ^ ^ ^0.8
    execute if entity @s[tag=entity.dreamland.magicball.chaos] run tp @s ^ ^ ^0.6
    execute if entity @s[tag=entity.dreamland.magicball.weak] run tp @s ^ ^ ^0.5
    execute if entity @s[tag=entity.dreamland.magicball.speed] run tp @s ^ ^ ^0.5
    #end魔法球的追踪
    execute if entity @s[tag=entity.dreamland.magicball.end] facing entity @e[type=#dreamland:enemy,distance=0..75,limit=1,sort=nearest] eyes run tp ^ ^ ^0.6
#为魔法球添加粒子特效
    execute if entity @s[tag=entity.dreamland.magicball.pure] run particle dust 0.24313725490196078 0.7843137254901961 1 1 ~ ~ ~ 0.06 0.06 0.06 0 5
    execute if entity @s[tag=entity.dreamland.magicball.boss] run particle dust 0.784 0.243 1 1 ~ ~ ~ 0.06 0.06 0.06 0 5
    execute if entity @s[tag=entity.dreamland.magicball.chaos] run particle dust 1 0.9294117647058824 0.30980392156862746 1 ~ ~ ~ 0.1 0.1 0.1 0 8
    execute if entity @s[tag=entity.dreamland.magicball.weak] run particle dust 0.51 0.969 0.369 1 ~ ~ ~ 0.06 0.06 0.06 0 4
    execute if entity @s[tag=entity.dreamland.magicball.end] run particle dust 0.463 0.11 0.925 1 ~ ~ ~ 0.06 0.06 0.06 0 4
    execute if entity @s[tag=entity.dreamland.magicball.cryst.fire] run particle dust 1 0.341 0.227 1 ~ ~ ~ 0.06 0.06 0.06 0 1
    execute if entity @s[tag=entity.dreamland.magicball.cryst.natural] run particle dust 0.208 0.565 0 1 ~ ~ ~ 0.06 0.06 0.06 0 1
    execute if entity @s[tag=entity.dreamland.magicball.cryst.water] run particle dust 0.059 0.263 0.925 1 ~ ~ ~ 0.06 0.06 0.06 0 1
    execute if entity @s[tag=entity.dreamland.magicball.cryst.void] run particle dust 0.553 0.553 0.553 1 ~ ~ ~ 0.06 0.06 0.06 0 1
    execute if entity @s[tag=entity.dreamland.magicball.cryst.ender] run particle dust 0.463 0.11 0.925 1 ~ ~ ~ 0.06 0.06 0.06 0 1
#为魔法球添加伤害效果
    execute if entity @s[tag=entity.dreamland.magicball.pure] if entity @e[type=#dreamland:enemy,distance=0..1.5] run function dreamland:entity/magic_ball/damage/pure
    execute if entity @s[tag=entity.dreamland.magicball.end] if entity @e[type=#dreamland:enemy,distance=0..1.3] run function dreamland:entity/magic_ball/damage/end
    execute if entity @s[tag=entity.dreamland.magicball.chaos] if entity @e[type=!minecraft:player,distance=..2,tag=!entity.dreamland.magicball.chaos] run function dreamland:entity/magic_ball/damage/chaos
    execute if entity @s[tag=entity.dreamland.magicball.boss] if entity @a[distance=0..1.9] run function dreamland:entity/magic_ball/damage/boss
    execute if entity @s[tag=entity.dreamland.magicball.weak,tag=dream_player_friendly] as @e[distance=0..2.0,type=#dreamland:enemy] run effect give @s poison 3 1 false
    execute if entity @s[tag=entity.dreamland.magicball.weak,tag=!dream_player_friendly] as @a[distance=0..2.0] run damage @s 2.0 minecraft:magic
#魔法球的额外效果
    execute if entity @s[tag=entity.dreamland.magicball.poison] as @e[type=#dreamland:enemy,distance=0..2] run effect give @s poison 10 2 false
    execute as @e[tag=entity.dreamland.magicball.cryst.fire] at @s run function dreamland:items/wand_crystal/add/fire
    execute as @e[tag=entity.dreamland.magicball.cryst.natural] at @s run function dreamland:items/wand_crystal/add/natural
    execute as @e[tag=entity.dreamland.magicball.cryst.water] at @s run function dreamland:items/wand_crystal/add/water
    execute as @e[tag=entity.dreamland.magicball.cryst.void] at @s run function dreamland:items/wand_crystal/add/void
    execute as @e[tag=entity.dreamland.magicball.cryst.ender,tag=!entity.dreamland.magicball.cryst.ender_used] at @s run function dreamland:items/wand_crystal/add/ender
#魔法球挖掘虚空矿
    execute at @e[tag=entity.dreamland.magicball.chaos] as @e[tag=block.dreamland.void_ore,distance=0..1.5] at @s run function dreamland:entity/void_ore/dig
    execute at @e[tag=entity.dreamland.magicball.pure] as @e[tag=block.dreamland.void_ore,distance=0..1] at @s run function dreamland:entity/void_ore/dig
#删除魔法球
kill @e[tag=entity.dreamland.magicball,scores={dream_magicball_energy=..-1}]
