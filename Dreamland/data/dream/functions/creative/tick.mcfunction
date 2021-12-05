execute as @e[tag=dream_creative] run function dream:creative/gui/gui
execute as @e[tag=dream_creative_marker] at @s run tp @s @e[tag=dream_creative,limit=1,sort=nearest] 
execute as @e[tag=dream_creative_marker] at @s unless entity @e[tag=dream_creative,distance=0..1] run function dream:creative/kill