kill @e[tag=dream_sysyem_pos]
kill @e[tag=dream_system_monitor]
scoreboard players set dream_finalstorystage dream_counter 5
execute in btoe:space run tp @a 3.65 64.00 -3.49 806.21 87.16
clear @a[gamemode=!creative]
tellraw @a {"translate":"word.dreamland.system.log.last","color": "yellow","clickEvent": {"action": "run_command","value": "/tellraw @s {\"translate\":\"word.dreamland.system.log.space\"}"}}