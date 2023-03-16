#传送
scoreboard players set $aclib_var_raymode aclib_var 1
function aclib:ray/start
execute at @e[tag=aclib_var_rayEndPos,limit=1] run tp @s ~ ~1 ~
particle portal ~ ~ ~ 1 1 1 1.0 40
scoreboard players remove @s[gamemode=!creative] dream_magic 20
scoreboard players set @s dream_wanduse_cd 0