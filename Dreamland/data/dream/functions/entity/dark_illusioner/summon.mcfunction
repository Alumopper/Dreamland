#游戏阶段临时修改为-1
scoreboard players set dream_gamestage dream_counter -1
#生成幻术师
summon illusioner ~ ~ ~ {Attributes:[{Name:"minecraft:generic.max_health",Base:120.0}],CustomName:'{"translate":"dream.name.boss.dark_illusioner"}',CustomNameVisible:false,Tags:["dream_dark_illusioner"]}
#世界边界
worldborder set 20 5