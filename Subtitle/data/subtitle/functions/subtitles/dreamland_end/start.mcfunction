execute if entity @a[tag=subt_watching] unless score dream_finalstorystage dream_counter matches 4 run return 0
scoreboard players set dream_finalstorystage dream_counter -10
tag @s add subt_watching
tag @s add subt_dreamland_end_tag
scoreboard players set subt_dreamland_end subt_timer 0
execute in dreamland:memory_abyss run summon area_effect_cloud 456.5 98.50 503.50 {Tags:[dreamland_end_camara], Rotation:[-90f,0f],Duration:100000}
effect give @a night_vision infinite 0 false
gamemode spectator @a
execute as @a run spectate @e[tag=dreamland_end_camara,limit=1] @s