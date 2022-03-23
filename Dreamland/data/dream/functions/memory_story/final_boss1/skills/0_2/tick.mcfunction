execute as @e[tag=dream_finalskill_psummon_0_2] at @s run tp @s ~ ~-0.24 ~
execute as @e[tag=dream_finalskill_psummon_0_2] at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 1.0 5
execute as @e[tag=dream_finalskill_psummon_0_2] at @s unless block ~ ~ ~ air run particle firework ~ ~ ~ 7 7 7 1.0 500
execute as @e[tag=dream_finalskill_psummon_0_2] at @s unless block ~ ~ ~ air run kill @s