execute as @e[tag=dream_portal] at @s run function dream:dream_portal/mode/modecheck
execute as @e[tag=dream_portal,tag=dream_portal_disable] at @s run function dream:dream_portal/mode/disable/gui
execute as @e[tag=dream_portal,tag=dream_portal_empty] at @s run function dream:dream_portal/mode/empty/gui
execute as @e[tag=dream_portal,tag=dream_portal_sweetdream] at @s run function dream:dream_portal/mode/sweetdream/gui
execute as @e[tag=dream_portal,tag=dream_portal_nightmare] at @s run function dream:dream_portal/mode/nightmare/gui
execute as @e[tag=dream_portal_sweetdream] at @s run particle dust 0.047 0.765 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 5 
execute as @e[tag=dream_portal_nightmare] at @s run particle dust 0.584 0.047 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 5
execute as @a[scores={dream_tpwait=-1}] at @s if entity @e[distance=0..1.5,tag=dream_portal,tag=!dream_portal_disable,tag=!dream_portal_empty] run scoreboard players set @s dream_tpwait 100
execute as @a[scores={dream_tpwait=100..160}] at @s unless entity @e[distance=0..1.5,tag=dream_portal,tag=!dream_portal_disable,tag=!dream_portal_empty] run scoreboard players set @s dream_tpwait -1