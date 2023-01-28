#TODO 这个函数执行的时候太卡了哼哼哼啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
#清空四周
fill -25 71 -25 25 80 25 air
fill -25 69 -25 25 69 25 quartz_block
#生成结构
scoreboard players set dream_tower_generation dream_counter 0
#生成基岩
setblock 0 68 0 bedrock
#标记
summon armor_stand 0 68 0 {Invisible:true,Marker:true,Tags:[dream_tower]}
#生成战利品
#一楼
execute positioned -8 72 -9 run function dream:structure/dream_tower/loot2
execute positioned -15 72 -11 run function dream:structure/dream_tower/loot2
#侧塔
execute positioned -23 164 -3 run function dream:structure/dream_tower/loot
execute positioned -24 164 -3 run function dream:structure/dream_tower/loot
execute positioned -26 164 -3 run function dream:structure/dream_tower/loot
execute positioned -27 164 -3 run function dream:structure/dream_tower/loot
execute positioned -23 164 3 run function dream:structure/dream_tower/loot
execute positioned -24 164 3 run function dream:structure/dream_tower/loot
execute positioned -26 164 3 run function dream:structure/dream_tower/loot
execute positioned -27 164 3 run function dream:structure/dream_tower/loot
execute in dream:sweetdream run item replace block -28 164 0 container.13 with carrot_on_a_stick{CustomModelData: 120023, tag: {id: "dreamland:cloud_gun",isTemp: 0b}, display: {Name: '[{"translate":"item.dreamland.cloud_gun","italic": false}]'}}
#清扫生成的花花草草