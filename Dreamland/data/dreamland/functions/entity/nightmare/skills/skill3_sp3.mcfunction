#回复血量
scoreboard players operation entity.dreamland.nightmare_energy dream_counter *= C_5 math_count
scoreboard players operation entity.dreamland.nightmare dream_counter += entity.dreamland.nightmare_energy dream_counter
scoreboard players set entity.dreamland.nightmare_energy dream_counter 0
execute if score entity.dreamland.nightmare dream_counter matches ..-1 run function dreamland:entity/nightmare/kill