#熄灭火焰和岩浆
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace fire
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 obsidian replace lava
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 stone replace magma_block
execute as @e[distance=0..5] run data modify entity @s Fire set value -1
#伤害地狱生物
effect give @e[type=#dream:nether_enemy,distance=0..5,type=!#dream:undead_mobs] instant_damage 1 1 false 
effect give @e[distance=0..5,type=wither_skeleton] instant_health 1 1 false 
#消耗
scoreboard players remove @s[gamemode=!creative] dream_magic 30
scoreboard players set @s dream_wanduse_cd 0