#射线法
scoreboard players add dream_temp_s_b_c_start dream_counter 1
execute unless block ~ ~ ~ black_concrete run fill ~ -1 ~ ~ 255 ~ air
execute if score dream_temp_s_b_c_start dream_counter < dream_blackhole_radius dream_counter positioned ^ ^ ^1 run function dream:structure/black_hole/clear/ray 