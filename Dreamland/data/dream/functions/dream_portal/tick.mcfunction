function dream:dream_portal/mode/modecheck
execute if entity @s[tag=dream_portal_disable] run function dream:dream_portal/mode/disable/gui
execute if entity @s[tag=dream_portal_empty] run function dream:dream_portal/mode/empty/gui
execute if entity @s[tag=dream_portal_sweetdream] run function dream:dream_portal/mode/sweetdream/gui
execute if entity @s[tag=dream_portal_nightmare] run function dream:dream_portal/mode/nightmare/gui
execute if entity @s[tag=dream_portal_sweetdream] run particle dust 0.047 0.765 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 5 
execute if entity @s[tag=dream_portal_nightmare] run particle dust 0.584 0.047 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=!dream_portal_disable,tag=!dream_portal_empty] run scoreboard players set @a[distance=0..1.5,scores={dream_tpwait=-1}] dream_tpwait 100
#注：tp在timer/dream函数中被调用