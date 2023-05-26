#尝试生成虚空矿石
    #初始化
    execute unless entity @e[tag=block.dreamland.void_ore] in dreamland:chaos positioned 0 -24 0 run function dreamland:entity/void_ore/summon
execute as @e[tag=!block.dreamland.void_ore.end,tag=block.dreamland.void_ore] in dreamland:chaos positioned 0 -24 0 if entity @s[distance=..120] at @s run function dreamland:entity/void_ore/generation
#如果矿石不足
execute store result score dream_temp_e_tick dream_counter if entity @e[tag=block.dreamland.void_ore]
execute if score dream_temp_e_tick dream_counter matches ..5 run function dreamland:entity/void_ore/regeneration
#虚空矿石的显示
execute as @e[tag=block.dreamland.void_ore] at @s if entity @a[predicate=dreamland:if_entity/in_chaos] run function dreamland:entity/void_ore/display
execute as @e[tag=block.dreamland.void_ore.ball] at @s run function dreamland:entity/void_ore/dig_t
#虚空矿石给玩家的伤害
execute as @a at @s if entity @e[tag=block.dreamland.void_ore,distance=..16] run effect give @s wither 1 0 false