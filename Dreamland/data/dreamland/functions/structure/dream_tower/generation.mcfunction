#TODO 这个函数执行的时候太卡了哼哼哼啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
#清空四周
fill -25 121 -25 25 130 25 air
fill -25 119 -25 25 119 25 quartz_block
#生成结构
scoreboard players set dream_tower_generation dream_counter 0
#生成基岩
setblock 0 118 0 bedrock
#标记
summon marker 0 118 0 {Tags:[dream_tower]}
#生成战利品
#一楼
execute positioned -8 122 -9 run function dreamland:structure/dream_tower/loot2
execute positioned -15 122 -11 run function dreamland:structure/dream_tower/loot2
#侧塔
execute positioned -23 214 -3 run function dreamland:structure/dream_tower/loot
execute positioned -24 214 -3 run function dreamland:structure/dream_tower/loot
execute positioned -26 214 -3 run function dreamland:structure/dream_tower/loot
execute positioned -27 214 -3 run function dreamland:structure/dream_tower/loot
execute positioned -23 214 3 run function dreamland:structure/dream_tower/loot
execute positioned -24 214 3 run function dreamland:structure/dream_tower/loot
execute positioned -26 214 3 run function dreamland:structure/dream_tower/loot
execute positioned -27 214 3 run function dreamland:structure/dream_tower/loot
#清扫生成的花花草草
#TODO