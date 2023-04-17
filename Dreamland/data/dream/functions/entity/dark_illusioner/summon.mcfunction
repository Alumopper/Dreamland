#游戏阶段临时修改为-1
scoreboard players set dream_gamestage dream_counter -1
#生成幻术师
summon illusioner ~ ~1 ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:120.0}],CustomName:'{"translate":"dream.name.boss.dark_illusioner"}',CustomNameVisible:false,Tags:["entity.dream.dark_illusioner","dream_just_dill"]}
effect give @e[tag=entity.dream.dark_illusioner] instant_health 1 10
#bossbar
bossbar set dream:boss name ["---<",{"translate":"dream.name.boss.dark_illusioner"},">---"]
bossbar set dream:boss max 120
bossbar set dream:boss color purple
bossbar set dream:boss visible true
bossbar set dream:boss players @a