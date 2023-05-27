#返回用
execute if score @s dream_tp_cd matches ..-1 if entity @e[tag=dream_portal_pointer,distance=0..4] run function dreamland:dream_portal/back_wait 
execute if score @s dream_tp_cd matches ..-1 unless entity @e[tag=dream_portal_pointer,distance=0..4] run scoreboard players set @s dream_tp_cd -1
scoreboard players remove @a[scores={dream_tp_cd=0..}] dream_tp_cd 1