#极端情况0：掉落沙实体数量超过5000
execute store result score adm_entitynum adm_temp if entity @e[type=armor_stand,tag=dream_black_hole]
tellraw @a ["黑洞盔甲架数量",{"score":{"name":"adm_entitynum","objective": "adm_temp"}}]
execute store result score adm_entitynum adm_temp if entity @e[type=falling_block]
tellraw @a ["掉落沙数量",{"score":{"name":"adm_entitynum","objective": "adm_temp"}}]