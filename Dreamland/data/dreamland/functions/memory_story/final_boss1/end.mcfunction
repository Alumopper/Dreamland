#stopsound @a
kill @e[tag=dream_playerpos_tracker]
kill @e[tag=dream_final_boss1]
bossbar set dreamland:boss visible false
scoreboard players set dream_finalboss1_skilltimer dream_timer -1
difficulty peaceful
gamerule doMobSpawning false
tellraw @a {"translate":"word.dream.memory_abyss.sys2"}
schedule function dreamland:memory_story/final_boss2/load 10s