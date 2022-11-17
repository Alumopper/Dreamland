scoreboard players add @e[tag=dream_heal_drowned] dream_timer 1
execute as @e[tag=dream_heal_drowned,scores={dream_timer=600..}] run function dream:memory_story/final_boss2/skills/2_4/trans
#治疗球飞行
execute as @e[tag=dream_healing_magicball] at @s facing entity @e[tag=entity.dream.finalboss2,limit=1] eyes run tp @s ^ ^ ^0.1
execute at @e[tag=dream_healing_magicball] run particle happy_villager ~ ~ ~ 0.1 0.1 0.1 1.0 5