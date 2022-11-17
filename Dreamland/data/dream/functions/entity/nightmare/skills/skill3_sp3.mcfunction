#回复血量
scoreboard players operation entity.dream.nightmare_energy dream_counter *= C_5 math_count
scoreboard players operation entity.dream.nightmare dream_counter += entity.dream.nightmare_energy dream_counter
scoreboard players set entity.dream.nightmare_energy dream_counter 0
execute if score entity.dream.nightmare dream_counter matches ..-1 run function dream:entity/nightmare/kill