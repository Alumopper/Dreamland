bossbar set dreamland:boss visible false
bossbar set dreamland:boss_sheild visible false
schedule clear dreamland:memory_story/final_boss2/skills/schedule
schedule clear dreamland:memory_story/final_boss2/skills/b_1/flush
execute as @a run attribute @s minecraft:generic.max_health base set 20.0
effect give @a instant_health
kill @e[tag=entity.dream.finalboss2]
function finalboss_ani:remove/all
kill @e[tag=entity.dream.healing_crystal.blue]
kill @e[tag=entity.dream.healing_crystal.green]
tp @e[type=drowned,predicate=dreamland:if_entity/in_the_end_of_dream] 0 0 0
function finalboss_ani:uninstall
effect clear @a regeneration
kill @e[tag=dream_playerpos_tracker]
tellraw @a {"translate": "word.dream.memory_abyss.sys5","color": "gray","italic": true}
#schedule function dreamland:memory_story/final_boss2/1 2s
#schedule function dreamland:memory_story/final_boss2/next 5s
scoreboard players set dream_finalstorystage dream_counter -1
scoreboard players set dream_finalboss2_timer dream_timer -1
worldborder set 29999984
execute as @a run attribute @s generic.max_health base set 20
stopsound @a