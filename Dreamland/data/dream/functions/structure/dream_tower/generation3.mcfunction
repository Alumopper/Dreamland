#清除红石块和结构方块
setblock -18 55 -19 air
setblock -18 55 -18 air
setblock -14 149 0 minecraft:air
setblock 0 149 -14 minecraft:air
setblock 14 149 0 minecraft:air
setblock 0 149 14 minecraft:air
setblock -14 148 0 minecraft:air
setblock 0 148 -14 minecraft:air
setblock 14 148 0 minecraft:air
setblock 0 148 14 minecraft:air
fill -14 76 -15 -14 255 -14 air
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
execute in dream:sweetdream run item replace block -28 149 0 container.13 with carrot_on_a_stick{CustomModelData: 120023, tag: {id: "dreamland:cloud_gun",isTemp: 0b}, display: {Name: '[{"translate":"dream.item.name.cloud_gun","italic": false}]'}}
scoreboard players set dream_tower_generation dream_counter -1
#清扫生成的花花草草