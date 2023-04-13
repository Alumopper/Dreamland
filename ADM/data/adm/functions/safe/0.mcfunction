#极端情况0：实体数过高
execute store result score adm_entitynum adm_temp if entity @e
tellraw @a ["总数量",{"score":{"name":"adm_entitynum","objective": "adm_temp"}}]
execute store result score adm_entitynum adm_temp if entity @e[type=armor_stand]
tellraw @a ["生成器盔甲架数量",{"score":{"name":"adm_entitynum","objective": "adm_temp"}}]
execute store result score adm_entitynum adm_temp if entity @e[type=fireball]
tellraw @a ["火球数量",{"score":{"name":"adm_entitynum","objective": "adm_temp"}}]
execute store result score adm_entitynum adm_temp if entity @e[type=falling_block]
tellraw @a ["掉落沙数量",{"score":{"name":"adm_entitynum","objective": "adm_temp"}}]
datapack disable "file/Dreamland1"