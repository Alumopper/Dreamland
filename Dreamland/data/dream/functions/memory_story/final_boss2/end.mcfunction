bossbar set dream:boss visible false
schedule clear dream:memory_story/final_boss2/skills/schedule
execute as @a run attribute @s minecraft:generic.max_health base set 20.0
effect give @a instant_health
kill @e[tag=dream_finalboss2]
function finalboss_ani:remove/all
kill @e[tag=dream_cyst_blue]
kill @e[tag=dream_cyst_green]
function finalboss_ani:uninstall
scoreboard players set dream_finalstorystage dream_counter 4