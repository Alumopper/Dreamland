gamemode spectator @a[gamemode=!creative]
execute in dreamland:memory_abyss run tp @a 456.5 97.50 503.50
effect clear @a
execute as @a run function subtitle:subtitles/dreamland_end/start
scoreboard players set dream_finalstorystage dream_counter 4