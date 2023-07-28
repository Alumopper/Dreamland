##
 # get_geneinfo.mcfunction
 # 
 # as/at @s
 #
 # Created by Alumopper.
##
tellraw @s {"text": "====================DEBUG INFOS"}
tellraw @s {"text": "--------------System"}
tellraw @s [{"text": "Game stage: "}, {"score": {"name": "dream_gamestage", "objective": "dream_counter"}}]
tellraw @s [{"text": "Story stage: "}, {"score": {"name": "dream_finalstorystage", "objective": "dream_counter"}}]
tellraw @s [{"text": "Sleep Time: "}, {"score": {"name": "@s", "objective": "dream_sleeptime"}}]
#execute store result score dream_temp_o_get_geneinfo_functiontick dream_counter run function #tick
#tellraw @s [{"text": "Commands pre tick: "}, {"score": {"name": "dream_temp_o_get_geneinfo_functiontick", "objective": "dream_counter"}}]
tellraw @s {"text": "--------------Entity"}
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e
tellraw @s [{"text": "All: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[predicate=dreamland:if_entity/in_sweetdream]
tellraw @s [{"text": "  In Sweetdream: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[predicate=dreamland:if_entity/in_nightmare]
tellraw @s [{"text": "  In nightmare: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[predicate=dreamland:if_entity/in_chaos]
tellraw @s [{"text": "  In chaos: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[type=armor_stand]
tellraw @s [{"text": "Armorstand: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[type=area_effect_cloud]
tellraw @s [{"text": "Area Effect Cloud: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[type=marker]
tellraw @s [{"text": "Marker: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[tag=dream_black_hole]
tellraw @s [{"text": "Blackhold Entity: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
execute store result score dream_temp_o_get_geneinfo_entitynum dream_counter run execute if entity @e[tag=block.dreamland.void_ore]
tellraw @s [{"text": "Void ore entity: "}, {"score": {"name": "dream_temp_o_get_geneinfo_entitynum", "objective": "dream_counter"}}]
tellraw @s {"text": "==============================="}