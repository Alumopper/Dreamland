#安全保护
execute store result score adm_entity adm_temp if entity @e[type=falling_block]
execute if score adm_entity adm_temp > adm_safety_threshold adm_option run function adm:safe