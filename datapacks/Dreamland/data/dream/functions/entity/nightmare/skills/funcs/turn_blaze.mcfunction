execute as @e[type=slime] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 20
execute as @e[type=slime] at @s run summon blaze ~ ~ ~
execute as @e[type=slime] run tp 0 -250 0
execute in the_end if entity @e[type=blaze,distance=0..] run schedule function dream:entity/nightmare/skills/funcs/turn_slime 10s