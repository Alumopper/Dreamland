execute if score dream_system_log_timer dream_timer matches -30 run tellraw @a {"translate":"word.dreamland.system.log.text1","color": "white"}
execute if score dream_system_log_timer dream_timer matches 28 run tellraw @a {"translate":"word.dreamland.system.log.text2","color": "white"}
execute if score dream_system_log_timer dream_timer matches 44 run tellraw @a {"translate":"word.dreamland.system.log.text3","color": "white"}
execute if score dream_system_log_timer dream_timer matches 111 run tellraw @a {"translate":"word.dreamland.system.log.text4","color": "white"}
execute if score dream_system_log_timer dream_timer matches 202 run tellraw @a {"translate":"word.dreamland.system.log.text5","color": "white"}
execute if score dream_system_log_timer dream_timer matches 323 run tellraw @a {"translate":"word.dreamland.system.log.text6","color": "white"}
execute if score dream_system_log_timer dream_timer matches 399 run tellraw @a {"translate":"word.dreamland.system.log.text7","color": "white"}
execute if score dream_system_log_timer dream_timer matches 511 run tellraw @a {"translate":"word.dreamland.system.log.text8","color": "white"}
execute if score dream_system_log_timer dream_timer matches 644 run tellraw @a {"translate":"word.dreamland.system.log.text9","color": "white"}
execute if score dream_system_log_timer dream_timer matches 780 run tellraw @a {"translate":"word.dreamland.system.log.text10","color": "white"}
execute if score dream_system_log_timer dream_timer matches 838 run tellraw @a {"translate":"word.dreamland.system.log.text11","color": "white"}
execute if score dream_system_log_timer dream_timer matches 941 run tellraw @a {"translate":"word.dreamland.system.log.text12","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1032 run tellraw @a {"translate":"word.dreamland.system.log.text13","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1105 run tellraw @a {"translate":"word.dreamland.system.log.text14","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1184 run tellraw @a {"translate":"word.dreamland.system.log.text15","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1299 run tellraw @a {"translate":"word.dreamland.system.log.text16","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1444 run tellraw @a {"translate":"word.dreamland.system.log.text17","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1538 run tellraw @a {"translate":"word.dreamland.system.log.text18","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1653 run tellraw @a {"translate":"word.dreamland.system.log.text19","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1714 run tellraw @a {"translate":"word.dreamland.system.log.text20","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1823 run tellraw @a {"translate":"word.dreamland.system.log.text21","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1914 run tellraw @a {"translate":"word.dreamland.system.log.text22","color": "white"}
execute if score dream_system_log_timer dream_timer matches 1966 run tellraw @a {"translate":"word.dreamland.system.log.text23","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2105 run tellraw @a {"translate":"word.dreamland.system.log.text24","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2226 run tellraw @a {"translate":"word.dreamland.system.log.text25","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2380 run tellraw @a {"translate":"word.dreamland.system.log.text26","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2483 run tellraw @a {"translate":"word.dreamland.system.log.text27","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2577 run tellraw @a {"translate":"word.dreamland.system.log.text28","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2734 run tellraw @a {"translate":"word.dreamland.system.log.text29","color": "white"}
execute if score dream_system_log_timer dream_timer matches 2900 run tellraw @a {"translate":"word.dreamland.system.log.text30","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3009 run tellraw @a {"translate":"word.dreamland.system.log.text31","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3130 run tellraw @a {"translate":"word.dreamland.system.log.text32","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3233 run tellraw @a {"translate":"word.dreamland.system.log.text33","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3315 run tellraw @a {"translate":"word.dreamland.system.log.text34","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3367 run tellraw @a {"translate":"word.dreamland.system.log.text35","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3407 run tellraw @a {"translate":"word.dreamland.system.log.text36","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3471 run tellraw @a {"translate":"word.dreamland.system.log.text37","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3500 run tellraw @a {"translate":"word.dreamland.system.log.text38","color": "white"}
execute if score dream_system_log_timer dream_timer matches 3550 run tellraw @a {"translate":"word.dreamland.system.log.button","color": "aqua", "clickEvent": {"action": "run_command","value": "/execute as @a run function subtitle:subtitles/dreamland_end/start"}}
scoreboard players add dream_system_log_timer dream_timer 1