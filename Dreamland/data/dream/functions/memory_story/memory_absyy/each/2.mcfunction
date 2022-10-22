#传送至下一层
execute as @a at @s run tp ~ ~-4 ~
#生成怪物
execute in dream:memory_abyss run summon vex 500 247 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:40.0},{Name:"minecraft:generic.attack_damage",Base:3.0}]}
execute in dream:memory_abyss run summon vex 500 247 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:30.0},{Name:"minecraft:generic.attack_damage",Base:2.0}]}
execute in dream:memory_abyss run summon vex 500 247 500 {Attributes:[{Name:"minecraft:generic.max_health",Base:20.0},{Name:"minecraft:generic.attack_damage",Base:1.0}]}