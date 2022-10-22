#混沌前计时器
#进入梦境
execute as @a if score @s dream_tpwait matches 75 run effect give @s blindness 10 0 false
execute as @a if score @s dream_tpwait matches 93 run function dream:sleep/random01
execute as @a if score @s dream_tpwait matches 94 run function dream:sleep/random02
execute as @a at @s if score @s dream_tpwait matches 95 if entity @e[tag=defenfed_dream_bed] run scoreboard players set @s dream_bxmingming 100
execute as @a at @s if score @s dream_tpwait matches 95 if entity @e[tag=broken_dream_bed] run scoreboard players set @s dream_bxmingming 0
execute as @a if score @s dream_tpwait matches 95 run function dream:sleep/tp
#利用梦境传送门进入梦境
execute as @a if score @s dream_tpwait matches 100.. run scoreboard players add @s dream_tpwait 1
execute as @a if score @s dream_tpwait matches 100.. at @s run particle portal ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @a if score @s dream_tpwait matches 160 at @s run function dream:dream_portal/mode/tp
execute as @a if score @s dream_tpwait matches 163 at @s run function dream:other/platform
#梦境计时
execute as @a if score @s dream_sleeptime matches 0.. run scoreboard players add @s dream_sleeptime 1
execute as @a if score @s dream_sleeptime matches 11800 run tellraw @s [{"translate": "info.dream.sleep.leave","color": "gray","italic": true}]
execute as @a if score @s dream_sleeptime matches 12000.. run function dream:sleep/leave
scoreboard players set @a[predicate=!dream:if_entity/in_dream,scores={dream_sleeptime=1..}] dream_sleeptime -1
#梦境塔生成计时
execute if score dream_tower_generation dream_counter matches 10 in dream:sweetdream run function dream:structure/dream_tower/generation2
execute if score dream_tower_generation dream_counter matches 15 in dream:sweetdream run function dream:structure/dream_tower/generation2p
execute if score dream_tower_generation dream_counter matches 20 in dream:sweetdream run function dream:structure/dream_tower/generation3
execute if score dream_tower_generation dream_counter matches 0.. run scoreboard players add dream_tower_generation dream_counter 1
#梦境塔Boss剧情延迟
function dream:structure/dream_tower/story
#boss技能
    #梦境护卫技能一
    execute unless score dream_boss1_skillcd2 dream_timer matches 181..260 if score dream_boss1_skillcd1 dream_timer matches 0.. run scoreboard players add dream_boss1_skillcd1 dream_timer 1
    execute unless score dream_boss1_skillcd2 dream_timer matches 181..260 if score dream_boss1_skillcd1 dream_timer matches 100 as @e[tag=dream_boss1] at @s facing entity @p eyes run function dream:structure/dream_tower/boss_skill
    #梦境护卫技能二
    execute if score dream_boss1_skillcd2 dream_timer matches 0.. run scoreboard players add dream_boss1_skillcd2 dream_timer 1