
#>
#@within dreamland:memory_story/final_boss2/**
#declare tag dream_heal_drowned
execute at @e[tag=entity.dreamland.finalboss2] run summon drowned ~2 ~ ~-1 {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:60},{Name:"minecraft:generic.attack_damage",Base:0.0}]}
execute at @e[tag=entity.dreamland.finalboss2] run summon drowned ~2 ~ ~1 {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:60},{Name:"minecraft:generic.attack_damage",Base:0.0}]}
execute at @e[tag=entity.dreamland.finalboss2] run summon drowned ~ ~ ~2 {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:60},{Name:"minecraft:generic.attack_damage",Base:0.0}]}
execute at @e[tag=entity.dreamland.finalboss2] run summon drowned ~1 ~ ~2 {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:60},{Name:"minecraft:generic.attack_damage",Base:0.0}]}
execute at @e[tag=entity.dreamland.finalboss2] run summon drowned ~-1 ~ ~2 {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:60},{Name:"minecraft:generic.attack_damage",Base:0.0}]}
execute at @e[tag=entity.dreamland.finalboss2] run summon drowned ~1 ~ ~-2 {Tags:["dream_heal_drowned"],Attributes:[{Name:"minecraft:generic.max_health",Base:60},{Name:"minecraft:generic.attack_damage",Base:0.0}]}
scoreboard players set @e[type=drowned,limit=6] dream_timer 0
particle falling_water ~ ~ ~ 2 2 2 1.0 50
#技能计时
schedule function dreamland:memory_story/final_boss2/skills/schedule 5s