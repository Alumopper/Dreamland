#传送至下一层
execute as @a at @s run tp ~ ~-4 ~
#生成怪物
execute in dreamland:memory_abyss run summon skeleton 500 247 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:40.0},{Name:"minecraft:generic.attack_damage",Base:12.0}]}
execute in dreamland:memory_abyss run summon skeleton 500 247 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:30.0},{Name:"minecraft:generic.attack_damage",Base:8.0}]}
execute in dreamland:memory_abyss run summon skeleton 500 247 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:20.0},{Name:"minecraft:generic.attack_damage",Base:6.0}]}