setblock ~ ~ ~ air
summon zombie ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:30}],Tags:["dream_block_ghost"],DeathLootTable:"dream:entity/block_ghost"}
effect give @e[distance=0] instant_damage 1 10 false
kill @s