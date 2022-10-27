
#>
#@within dream:memory_story/final_boss2/**
#declare tag dream_heal_drowned
summon drowned ~ ~ ~ {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:40}]}
summon drowned ~ ~ ~ {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:40}]}
summon drowned ~ ~ ~ {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:40}]}
scoreboard players set @e[type=drowned,distance=0..0.1] dream_timer 0
particle falling_water ~ ~ ~ 2 2 2 1.0 50