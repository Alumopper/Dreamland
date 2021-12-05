#熄灭火焰和岩浆
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 obsidian replace lava
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 stone replace magma_block
execute as @e[distance=0..1.7] run data modify entity @s Fire set value -1
#伤害烈焰人
effect give @e[type=blaze,distance=0..2] wither 1 1