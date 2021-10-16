#将玩家意外放入GUI的物品以实体的形式返还给玩家
summon chest_minecart ~ ~1 ~ {Tags:[dream_item_temp],Invulnerable:1b}
data modify entity @e[tag=dream_item_temp,limit=1] Items set from block ~ ~ ~ Items
execute if entity @e[tag=dream_item_temp,nbt={Items:[{Slot:0b,tag:{CustomModelData:120021}}]}] run replaceitem entity @e[tag=dream_item_temp] container.0 air
execute if block ~ ~ ~ chest{Items:[{Slot:4b,tag:{tag:"dreamland:sweetdream_essence"}}]} run replaceitem entity @e[tag=dream_item_temp] container.13 air
execute if block ~ ~ ~ chest{Items:[{Slot:4b,tag:{tag:"dreamland:nightmare_essence"}}]} run replaceitem entity @e[tag=dream_item_temp] container.13 air
execute if entity @s[tag=dream_defender] run replaceitem block ~ ~ ~ container.0 light_blue_dye{tag:{id:"dreamland:index"},CustomModelData:120021,display:{Name:'[{"text":"梦守卫塔","italic": false}]'}}
execute if entity @s[tag=dream_breaker] run replaceitem block ~ ~ ~ container.0 light_blue_dye{tag:{id:"dreamland:index"},CustomModelData:120021,display:{Name:'[{"text":"梦崩毁塔","italic": false}]'}}
replaceitem block ~ ~ ~ container.1 air
replaceitem block ~ ~ ~ container.2 air
replaceitem block ~ ~ ~ container.3 air
replaceitem block ~ ~ ~ container.4 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.7 air
replaceitem block ~ ~ ~ container.8 air
replaceitem block ~ ~ ~ container.9 air
replaceitem block ~ ~ ~ container.10 air
replaceitem block ~ ~ ~ container.11 air
replaceitem block ~ ~ ~ container.12 air
replaceitem block ~ ~ ~ container.14 air
replaceitem block ~ ~ ~ container.15 air
replaceitem block ~ ~ ~ container.16 air
replaceitem block ~ ~ ~ container.17 air
replaceitem block ~ ~ ~ container.18 air
replaceitem block ~ ~ ~ container.19 air
replaceitem block ~ ~ ~ container.20 air
replaceitem block ~ ~ ~ container.21 air
replaceitem block ~ ~ ~ container.22 air
replaceitem block ~ ~ ~ container.23 air
replaceitem block ~ ~ ~ container.25 air
replaceitem block ~ ~ ~ container.26 air
kill @e[tag=dream_item_temp]
execute as @e[type=item,distance=0..2] run data modify entity @s Motion set value [0.0,0.0,0.0]