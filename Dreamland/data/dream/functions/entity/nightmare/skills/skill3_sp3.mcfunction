#回复血量
scoreboard players operation dream_nightmare_energy dream_counter *= C_5 math_count
scoreboard players operation dream_nightmare dream_counter += dream_nightmare_energy dream_counter
scoreboard players set dream_nightmare_energy dream_counter 0
execute if score dream_nightmare dream_counter matches ..-1 run function dream:entity/nightmare/kill