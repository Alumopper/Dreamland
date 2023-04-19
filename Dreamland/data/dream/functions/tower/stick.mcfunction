particle dust 0 0.7176470588235294 1 1 ~ ~1.5 ~ 0.2 0.4 0.2 0.0 5
#激活
execute if block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{id:"dreamland:sweetdream_essence"}}]} run tag @s add dream_activated
#GUI
execute if entity @a[distance=..5.5] run function dream:tower/sgui
#面对半径为2以内的梦境床发出粒子效果
execute if entity @s[tag=dream_activated] anchored eyes as @e[tag=dream_bed,distance=0..5] facing entity @s eyes run function dream:tower/sray
#标记床
execute if entity @s[tag=dream_activated] as @e[distance=0..5,tag=dream_bed,tag=!defended_dream_bed,tag=!broken_dream_bed] run tag @s add defended_dream_bed
#两种塔不能放太近
execute anchored eyes as @e[tag=dream_breaker,distance=0..12] facing entity @s eyes run function dream:tower/sray
execute if entity @s[tag=dream_activated] if entity @e[tag=dream_breaker,distance=0..12] run tag @s remove dream_activated