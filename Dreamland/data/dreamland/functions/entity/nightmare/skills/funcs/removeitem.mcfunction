execute store success score dream_temp_e_n_s_f_3sp2 dream_counter run clear @s diamond{display:{Name:'"..."'}} 1
execute if score dream_temp_e_n_s_f_3sp2 dream_counter matches 1 run scoreboard players add entity.dreamland.nightmare_energy dream_counter 1
execute if score dream_temp_e_n_s_f_3sp2 dream_counter matches 1 run function dreamland:entity/nightmare/skills/funcs/3_sp2