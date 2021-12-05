#清空四周
fill -25 55 -25 25 66 25 air
fill -25 54 -25 25 54 25 quartz_block
#生成结构
setblock -18 55 -18 structure_block{name:"dream:dream_tower/dream_castle.floor",mode:"LOAD"}
setblock -18 55 -19 redstone_block
scoreboard players set dream_tower_generation dream_counter 0
#生成基岩
setblock 0 53 0 bedrock
#标记
summon armor_stand 0 53 0 {Invisible:true,Marker:true,Tags:[dream_tower]}