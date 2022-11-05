execute as @a run attribute @s generic.max_health base set 75.0
bossbar set dream:boss name "System.core"
scoreboard players set dream_temp.ma.fb2_temp.stage dream_counter 1
execute as @e[tag=dream_finalboss2] run function finalboss_ani:set_variant/half
function dream:memory_story/final_boss2/skills/1_1/load
effect give @a nausea 5 0