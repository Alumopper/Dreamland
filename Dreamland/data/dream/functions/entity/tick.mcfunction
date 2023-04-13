#气球史莱姆
    execute as @e[tag=entity.dream.balloon_slime] run function dream:entity/balloon_slime/tick
    #生成气球史莱姆
    execute as @e[type=slime,predicate=dream:if_entity/in_slimeland,tag=!entity.dream.balloon_slime,tag=!dream_unable_to_summon_slime] at @s run function dream:entity/balloon_slime/summon
    #模型消失
    execute as @e[tag=entity.dream.balloon_slime_model] at @s unless entity @e[tag=entity.dream.balloon_slime,distance=0..2.5] run kill @s
#随机修改噩梦世界中僵尸和骷髅的战利品表来掉落噩梦精华
execute as @e[type=zombie,tag=!dream_has_tested,predicate=dream:if_entity/in_nightmare,tag=!entity.dream.block_ghost] run function dream:entity/zombie/loot
execute as @e[type=skeleton,tag=!dream_has_tested,predicate=dream:if_entity/in_nightmare] run function dream:entity/skeleton/loot
#修改美梦世界中史莱姆的战利品表来掉落美梦精华
execute as @e[type=slime,tag=!dream_has_tested,tag=!entity.dream.balloon_slime,predicate=dream:if_entity/in_sweetdream] run function dream:entity/slime/loot
#生成方块鬼魂
execute as @e[type=zombie,tag=!dream_unable_to_turn_block,predicate=dream:if_entity/in_stoneshore] at @s run function dream:entity/block_ghost/summon
#触发方块鬼魂
execute as @e[tag=entity.dream.block_ghost.trigger] at @s if entity @a[distance=0..5] run function dream:entity/block_ghost/trigger
#幻翼火球
scoreboard players add @e[type=phantom,predicate=dream:if_entity/in_chaos] dream_phire 1
execute as @e[scores={dream_phire=200..}] at @s run function dream:entity/phantom/fire
#混沌世界的幻翼
execute at @a as @e[type=!player,type=!armor_stand,type=!phantom,type=!fireball,type=!item,type=!falling_block,type=!area_effect_cloud,type=!marker,tag=!dream_unable_to_summon_phantom,predicate=dream:if_entity/in_chaos,distance=0..50] at @s positioned ~ ~30 ~ run function dream:entity/phantom/summon
#幻翼火球
execute as @e[tag=dream_phantom_fireball] at @s run function dream:entity/phantom/fireball_tick
#梦魇
execute if entity @e[tag=entity.dream.nightmare] run function dream:entity/nightmare/tick
#生成梦魇
execute if entity @a[tag=entity.dream.nightmare_wait_to_restart] run function dream:entity/nightmare/load
#虚空矿石
execute if entity @a[predicate=dream:if_entity/in_chaos] run function dream:entity/void_ore/tick
#追逐者
execute as @e[tag=entity.dream.chaser] at @s run function dream:entity/chaser/tick
    #生成追逐者
    execute as @a unless score dream_gamestage dream_counter matches -1 if entity @s[predicate=dream:if_entity/in_deepdeepdark,predicate=dream:if_entity/at_dark] run scoreboard players add @s entity.dream.chaser_sm 1
    execute as @a if score dream_gamestage dream_counter matches 1.. unless entity @s[predicate=dream:if_entity/in_deepdeepdark,predicate=dream:if_entity/at_dark] run scoreboard players remove @s entity.dream.chaser_sm 1
    execute as @a at @s if score @s entity.dream.chaser_sm matches 1200.. run function dream:entity/chaser/summon
    execute as @a if score @s entity.dream.chaser_sm matches 1200.. run scoreboard players set @s entity.dream.chaser_sm 0
#噩梦世界的蝙蝠轰炸机
execute as @e[type=bat] if entity @s[predicate=dream:if_entity/in_nightmare] at @s positioned ~-1 ~-10 ~-1 if entity @a[dx=3,dy=10,dz=3] run function dream:entity/nightmare_bat/bat
#治疗水晶
execute as @e[tag=entity.dream.healing_crystal] run function dream:entity/healing_crystal/tick
execute as @e[tag=entity.dream.healing_crystal_model] at @s unless entity @e[tag=entity.dream.healing_crystal,distance=0..1.5] run kill @s
#魔法球
execute as @e[tag=entity.dream.magicball] at @s run function dream:entity/magic_ball/tick