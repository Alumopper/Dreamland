#气球史莱姆的移动
execute as @e[tag=dream_balloon_slime] at @s run function dream:entity/balloon_slime/move
#生成气球史莱姆
execute as @e[type=slime,predicate=dream:if_entity/in_slimeland,tag=!dream_balloon_slime,tag=!dream_unable_to_summon_slime] at @s run function dream:entity/balloon_slime/summon
#气球史莱姆模型设置
effect give @e[tag=dream_balloon_slime] invisibility 1 0 true
#删除模型
execute as @e[tag=dream_balloon_slime_model] at @s unless entity @e[tag=dream_balloon_slime,distance=0..2] run kill @s
#随机修改噩梦世界中僵尸和骷髅的战利品表来掉落噩梦精华
execute as @e[type=zombie,tag=!dream_has_tested,predicate=dream:if_entity/in_nightmare,tag=!dream_block_ghost] at @s run function dream:entity/zombie/loot
execute as @e[type=skeleton,tag=!dream_has_tested,predicate=dream:if_entity/in_nightmare] at @s run function dream:entity/skeleton/loot
#修改美梦世界中史莱姆的战利品表来掉落美梦精华
execute as @e[type=slime,tag=!dream_has_tested,predicate=dream:if_entity/in_nightmare] at @s run function dream:entity/slime/loot
#生成方块鬼魂
execute as @e[type=zombie,predicate=dream:if_entity/in_stoneshore,tag=!dream_unable_to_turn_block] at @s run function dream:entity/block_ghost/summon
#触发方块鬼魂
execute as @e[tag=dream_block_ghost_trigger] at @s if entity @a[distance=0..5] run function dream:entity/block_ghost/trigger
#方块鬼魂的模型
effect give @e[tag=dream_block_ghost] invisibility 233 0 true
execute as @e[tag=dream_block_ghost] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:diamond_ore"},Time:600,DropItem:false,NoGravity:true}
#幻翼
execute as @e[type=!player,type=!armor_stand,tag=!dream_unable_to_summon_phantom,predicate=dream:if_entity/in_nightmare] at @s run function dream:entity/phantom/summon
#幻翼火球
scoreboard players add @e[type=phantom,predicate=dream:if_entity/in_choas] dream_phire 1
execute as @e[scores={dream_phire=10..}] at @s run function dream:entity/phantom/fire
#混沌世界的幻翼
execute as @e[type=!player,type=!armor_stand,type=!phantom,type=!fireball,type=!item,type=!falling_block,tag=!dream_unable_to_summon_phantom,predicate=dream:if_entity/in_choas] at @s positioned ~ ~30 ~ run function dream:entity/phantom/summon
execute as @e[tag=dream_phantom_fireball] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air
#梦魇
execute if entity @e[tag=dream_nightmare] run function dream:entity/nightmare/tick
#生成梦魇
execute if entity @a[tag=dream_nightmare_wait_to_restart] run function dream:entity/nightmare/load