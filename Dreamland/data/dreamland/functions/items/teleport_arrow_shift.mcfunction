#传送
tag @s add dream_telepoint_willtp
execute at @s as @e[tag=dream_telepoint,distance=0..] if score @s dream_playerno = @s dream_playerno at @s run tp @a[tag=dream_telepoint_willtp] ~ ~ ~
execute at @s run particle dust 0.027 0.494 0.808 1 ~ ~ ~ 1.5 1.5 1.5 0.1 30
tag @a remove dream_telepoint_willtp
#耐久
item modify entity @s weapon.mainhand dreamland:teleport_arrow/use
execute if entity @s[nbt={SelectedItem:{tag:{Damage:25}}}] run item replace entity @s weapon.mainhand with air