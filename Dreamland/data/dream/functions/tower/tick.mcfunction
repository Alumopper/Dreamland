execute at @e[tag=dream_defender] run particle dust 0 0.7176470588235294 1 1 ~ ~1.5 ~ 0.2 0.4 0.2 0.0 5
execute at @e[tag=dream_breaker] run particle dust 0.9176470588235294 0 1 1 ~ ~1.5 ~ 0.2 0.4 0.2 0.0 5
#激活
execute as @e[tag=dream_defender] at @s if block ~ ~ ~ chest{Items:[{Slot:13b,tag:{tag:{id:"dreamland:sweetdream_essence"}}}]} run tag @s add dream_activated
execute as @e[tag=dream_breaker] at @s if block ~ ~ ~ chest{Items:[{Slot:13b,tag:{tag:{id:"dreamland:nightmare_essence"}}}]} run tag @s add dream_activated
#GUI
execute as @e[tag=dream_defender] at @s run function dream:tower/sgui
execute as @e[tag=dream_breaker] at @s run function dream:tower/ngui
#面对半径为2以内的梦境床发出粒子效果
execute at @e[tag=dream_defender,tag=dream_activated] anchored eyes as @e[tag=dream_bed,distance=0..5] facing entity @s eyes run function dream:tower/sray
execute at @e[tag=dream_breaker,tag=dream_activated] anchored eyes as @e[tag=dream_bed,distance=0..5] facing entity @s eyes run function dream:tower/nray
#标记床
execute at @e[tag=dream_defender,tag=dream_activated] as @e[tag=dream_bed,distance=0..5] if entity @s[tag=!defended_dream_bed,tag=!broken_dream_bed] run tag @s add defended_dream_bed
execute at @e[tag=dream_broken,tag=dream_activated] as @e[tag=dream_bed,distance=0..5] if entity @s[tag=!defended_dream_bed,tag=!broken_dream_bed] run tag @s add broken_dream_bed
#去除标记
execute as @e[tag=defended_dream_bed] at @s unless entity @e[tag=dream_defender,tag=dream_activated,distance=0..5] run tag @s remove defended_dream_bed
execute as @e[tag=broken_dream_bed] at @s unless entity @e[tag=dream_breaker,tag=dream_activated,distance=0..5] run tag @s remove broken_dream_bed
#两种塔不能放太近
execute at @e[tag=dream_breaker] anchored eyes as @e[tag=dream_defender,distance=0..12] facing entity @s eyes run function dream:tower/nray
execute at @e[tag=dream_defender] anchored eyes as @e[tag=dream_breaker,distance=0..12] facing entity @s eyes run function dream:tower/sray
execute as @e[tag=dream_defender,tag=dream_activated] at @s if entity @e[tag=dream_breaker,distance=0..12] run tag @s remove dream_activated
execute as @e[tag=dream_breaker,tag=dream_activated] at @s if entity @e[tag=dream_defender,distance=0..12] run tag @s remove dream_activated