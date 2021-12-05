#将史莱姆地的动物全部变成史莱姆 TBD
execute as @e[type=chicken,predicate=dream:if_entity/in_slimeland] at @s run function dream:entity/slime/summon
execute as @e[type=cow,predicate=dream:if_entity/in_slimeland] at @s run function dream:entity/slime/summon
execute as @e[type=pig,predicate=dream:if_entity/in_slimeland] at @s run function dream:entity/slime/summon
execute as @e[type=sheep,predicate=dream:if_entity/in_slimeland] at @s run function dream:entity/slime/summon
#挖掘生成史莱姆
execute as @a if score @s dream_dig_sb matches 1.. at @s at @e[type=item,nbt={Item:{id:"minecraft:slime_block"}},distance=0..4] run function dream:biome/slimeland/summon_slime
#气球史莱姆的数量控制
scoreboard players set dream_biome_slimeland_tick_temp dream_counter 0
execute store result score dream_biome_slimeland_tick_temp dream_counter if entity @e[tag=dream_balloon_slime]
execute if score dream_biome_slimeland_tick_temp dream_counter matches ..20 run tag @e remove dream_unable_to_summon_slime