setblock ~ ~ ~ air
summon zombie ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:30}],Tags:["entity.dream.block_ghost"],DeathLootTable:"dreamland:entity/block_ghost",ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:120009}}]}
effect give @e[tag=entity.dream.block_ghost,limit=1,sort=nearest] invisibility 1000000 0 true
effect give @e[distance=0] instant_damage 1 10 false
tp @s ~ -255 ~