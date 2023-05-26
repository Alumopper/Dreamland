#传送到boss场地前
execute in dreamland:memory_abyss run tp @a 497.51 251.00 497.53 -44.97 34.57
gamemode adventure @a[gamemode=survival]
#生成怪物
execute in dreamland:memory_abyss run summon zombie 500 251 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:40.0},{Name:"minecraft:generic.attack_damage",Base:12.0}]}
execute in dreamland:memory_abyss run summon zombie 500 251 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:30.0},{Name:"minecraft:generic.attack_damage",Base:8.0}]}
execute in dreamland:memory_abyss run summon zombie 500 251 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:20.0},{Name:"minecraft:generic.attack_damage",Base:6.0}]}
#剧情
tellraw @a {"translate":"word.dreamland.memory_abyss.sys1","color": "gray"}