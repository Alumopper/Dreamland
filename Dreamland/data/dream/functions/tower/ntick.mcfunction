particle dust 0.9176470588235294 0 1 1 ~ ~1.5 ~ 0.2 0.4 0.2 0.0 5
#激活
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{tag:{id:"dreamland:nightmare_essence"}}}]} run tag @s add dream_activated
#GUI
execute at @e[tag=dream_breaker] if entity @a[distance=..5.5] run function dream:tower/ngui
#面对半径为2以内的梦境床发出粒子效果
execute if entity @s[tag=dream_activated] anchored eyes as @e[tag=dream_bed,distance=0..5] facing entity @s eyes run function dream:tower/nray
#标记床
execute if entity @s[tag=dream_activated] as @e[tag=dream_bed,distance=0..5] if entity @s[tag=!defended_dream_bed,tag=!broken_dream_bed] run tag @s add broken_dream_bed
#两种塔不能放太近
execute anchored eyes as @e[tag=dream_defender,distance=0..12] facing entity @s eyes run function dream:tower/nray
execute if entity @s[tag=dream_activated] if entity @e[tag=dream_defender,distance=0..12] run tag @s remove dream_activated
