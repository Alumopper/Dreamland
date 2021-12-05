execute as @e[type=silverfish] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute as @e[type=silverfish] at @s run summon slime ~ ~1 ~ {Size:2}
execute as @e[type=silverfish] run tp 0 -250 0
execute as @e[type=blaze] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute as @e[type=blaze] at @s run summon slime ~ ~1 ~ {Size:2}
execute as @e[type=blaze] run tp 0 -250 0
execute in dream:the_end_of_dream if entity @e[type=slime,distance=0..] run schedule function dream:entity/nightmare/skills/funcs/turn_blaze 10s