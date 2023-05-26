#游戏阶段临时修改为-1
scoreboard players set dream_gamestage dream_counter -1
#生成幻术师
summon illusioner ~ ~1 ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:120.0}],CustomName:'{"translate":"dreamland.name.boss.dark_illusioner"}',CustomNameVisible:false,Tags:["entity.dreamland.dark_illusioner","dream_just_dill"],DeathLootTable:"dreamland:entity/dark_illusioner"}
effect give @e[tag=entity.dreamland.dark_illusioner] instant_health 1 10
#bossbar
bossbar set dreamland:boss name ["---<",{"translate":"dreamland.name.boss.dark_illusioner"},">---"]
bossbar set dreamland:boss max 120
bossbar set dreamland:boss color purple
bossbar set dreamland:boss visible true
bossbar set dreamland:boss players @a