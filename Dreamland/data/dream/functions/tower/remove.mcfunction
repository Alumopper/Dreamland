#将玩家意外放入GUI的物品以实体的形式返还给玩家
summon chest_minecart ~ ~1 ~ {Tags:[dream_item_temp],Invulnerable:1b}
data modify entity @e[tag=dream_item_temp,limit=1] Items set from block ~ ~ ~ Items
execute if entity @e[tag=dream_item_temp,nbt={Items:[{Slot:0b,tag:{CustomModelData:120021}}]}] run item replace entity @e[tag=dream_item_temp] container.0 with air
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{dreamland:"dreamland:sweetdream_essence"}}]} run item replace entity @e[tag=dream_item_temp] container.13 with air
execute if block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{dreamland:"dreamland:nightmare_essence"}}]} run item replace entity @e[tag=dream_item_temp] container.13 with air
execute if entity @s[tag=dream_defender] run item replace block ~ ~ ~ container.0 with light_blue_dye{tag: {id: "dreamland:index"}, CustomModelData: 120021, display: {Name: '[{"text":"梦守卫塔","italic": false}]'}}
execute if entity @s[tag=dream_breaker] run item replace block ~ ~ ~ container.0 with light_blue_dye{tag: {id: "dreamland:index"}, CustomModelData: 120021, display: {Name: '[{"text":"梦崩毁塔","italic": false}]'}}
item replace block ~ ~ ~ container.1 with air
item replace block ~ ~ ~ container.2 with air
item replace block ~ ~ ~ container.3 with air
item replace block ~ ~ ~ container.4 with air
item replace block ~ ~ ~ container.5 with air
item replace block ~ ~ ~ container.6 with air
item replace block ~ ~ ~ container.7 with air
item replace block ~ ~ ~ container.8 with air
item replace block ~ ~ ~ container.9 with air
item replace block ~ ~ ~ container.10 with air
item replace block ~ ~ ~ container.11 with air
item replace block ~ ~ ~ container.12 with air
item replace block ~ ~ ~ container.14 with air
item replace block ~ ~ ~ container.15 with air
item replace block ~ ~ ~ container.16 with air
item replace block ~ ~ ~ container.17 with air
item replace block ~ ~ ~ container.18 with air
item replace block ~ ~ ~ container.19 with air
item replace block ~ ~ ~ container.20 with air
item replace block ~ ~ ~ container.21 with air
item replace block ~ ~ ~ container.22 with air
item replace block ~ ~ ~ container.23 with air
item replace block ~ ~ ~ container.25 with air
item replace block ~ ~ ~ container.26 with air
kill @e[tag=dream_item_temp]
execute as @e[type=item,distance=0..2] run data modify entity @s Motion set value [0.0,0.0,0.0]