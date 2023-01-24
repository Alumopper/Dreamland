#TODO 这个函数执行的时候太卡了哼哼哼啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
#清空四周
fill -25 71 -25 25 80 25 air
fill -25 69 -25 25 69 25 quartz_block
#生成结构
place template dream:dream_tower/dream_castle.floor -18 70 -18
place template dream:dream_tower/dream_castle.second1 -14 91 -14
place template dream:dream_tower/dream_castle.second2 -14 103 -14
place template dream:dream_tower/dream_castle.second3 -14 115 -14
place template dream:dream_tower/dream_castle.second4 -14 127 -14
place template dream:dream_tower/dream_castle.second5 -14 139 -14
place template dream:dream_tower/dream_castle.second6 -14 151 -14
place template dream:dream_tower/dream_castle.second7 -14 163 -14
place template dream:dream_tower/dream_castle.top1 -14 175 -14
place template dream:dream_tower/dream_castle.top2 -14 187 -14
place template dream:dream_tower/dream_castle.side1 -15 153 -15 clockwise_90
place template dream:dream_tower/dream_castle.side2 15 153 -15 180
place template dream:dream_tower/dream_castle.side3 15 153 15 counterclockwise_90
place template dream:dream_tower/dream_castle.side4 -15 153 15
#生成基岩
setblock 0 53 0 bedrock
#标记
summon armor_stand 0 53 0 {Invisible:true,Marker:true,Tags:[dream_tower]}
#生成战利品
#一楼
execute positioned -8 57 -9 run function dream:structure/dream_tower/loot2
execute positioned -15 57 -11 run function dream:structure/dream_tower/loot2
#侧塔
execute positioned -23 149 -3 run function dream:structure/dream_tower/loot
execute positioned -24 149 -3 run function dream:structure/dream_tower/loot
execute positioned -26 149 -3 run function dream:structure/dream_tower/loot
execute positioned -27 149 -3 run function dream:structure/dream_tower/loot
execute positioned -23 149 3 run function dream:structure/dream_tower/loot
execute positioned -24 149 3 run function dream:structure/dream_tower/loot
execute positioned -26 149 3 run function dream:structure/dream_tower/loot
execute positioned -27 149 3 run function dream:structure/dream_tower/loot
execute in dream:sweetdream run item replace block -28 149 0 container.13 with carrot_on_a_stick{CustomModelData: 120023, tag: {id: "dreamland:cloud_gun",isTemp: 0b}, display: {Name: '[{"translate":"item.dreamland.cloud_gun","italic": false}]'}}
scoreboard players set dream_tower_generation dream_counter -1
#清扫生成的花花草草