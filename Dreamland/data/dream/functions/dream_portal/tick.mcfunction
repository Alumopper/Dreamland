function dream:dream_portal/mode/modecheck
execute if entity @s[tag=block.dream.dream_portal_disable] run function dream:dream_portal/mode/disable/gui
execute if entity @s[tag=block.dream.dream_portal_empty] run function dream:dream_portal/mode/empty/gui
execute if entity @s[tag=block.dream.dream_portal_sweetdream] run function dream:dream_portal/mode/sweetdream/gui
execute if entity @s[tag=block.dream.dream_portal_nightmare] run function dream:dream_portal/mode/nightmare/gui
execute if entity @s[tag=block.dream.dream_portal_sweetdream] run particle dust 0.047 0.765 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 5 
execute if entity @s[tag=block.dream.dream_portal_nightmare] run particle dust 0.584 0.047 0.945 1 ~ ~1 ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=!block.dream.dream_portal_disable,tag=!block.dream.dream_portal_empty] run scoreboard players set @a[distance=0..1.5,scores={dream_tpwait=-1}] dream_tpwait 100
#注：tp在timer/dream函数中被调用
#返回用
execute as @a[scores={dream_tp_cd=..-1}] at @s if entity @e[tag=block.dream.dream_portal_pointer,distance=0..4] run function dream:dream_portal/back_wait 
execute as @a[scores={dream_tp_cd=..-1}] at @s unless entity @e[tag=block.dream.dream_portal_pointer,distance=0..4] run scoreboard players set @s dream_tp_cd -1
scoreboard players remove @a[scores={dream_tp_cd=0..}] dream_tp_cd 1
