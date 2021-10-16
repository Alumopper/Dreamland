#将玩家意外放入GUI的物品以实体的形式返还给玩家
summon chest_minecart ~ ~1 ~ {Tags:[dream_item_temp],Invulnerable:1b}
data modify entity @e[tag=dream_item_temp,limit=1] Items set from block ~ ~ ~ Items
execute if entity @e[tag=dream_item_temp,nbt={Items:[{Slot:0b,tag:{CustomModelData:120018}}]}] run replaceitem entity @e[tag=dream_item_temp] container.0 air
replaceitem entity @e[tag=dream_item_temp] container.1 air
replaceitem entity @e[tag=dream_item_temp] container.2 air
replaceitem entity @e[tag=dream_item_temp] container.3 air
replaceitem entity @e[tag=dream_item_temp] container.9 air
replaceitem entity @e[tag=dream_item_temp] container.10 air
replaceitem entity @e[tag=dream_item_temp] container.11 air
replaceitem entity @e[tag=dream_item_temp] container.12 air
replaceitem entity @e[tag=dream_item_temp] container.13 air
replaceitem entity @e[tag=dream_item_temp] container.15 air
execute if entity @e[tag=dream_item_temp,nbt={Items:[{Slot:16b,tag:{tag:{isTemp:1b}}}]}] run replaceitem entity @e[tag=dream_item_temp] container.16 air
replaceitem entity @e[tag=dream_item_temp] container.19 air
replaceitem entity @e[tag=dream_item_temp] container.20 air
replaceitem entity @e[tag=dream_item_temp] container.21 air
replaceitem block ~ ~ ~ container.0 light_blue_dye{tag:{id:"dreamland:index"},CustomModelData:120018,display:{Name:'[{"text":"梦境合成台","italic": false}]'}}
replaceitem block ~ ~ ~ container.4 air
replaceitem block ~ ~ ~ container.5 air
replaceitem block ~ ~ ~ container.6 air
replaceitem block ~ ~ ~ container.7 air
replaceitem block ~ ~ ~ container.8 air
replaceitem block ~ ~ ~ container.14 air
replaceitem block ~ ~ ~ container.16 air
replaceitem block ~ ~ ~ container.17 air
replaceitem block ~ ~ ~ container.18 air
replaceitem block ~ ~ ~ container.22 air
replaceitem block ~ ~ ~ container.23 air
replaceitem block ~ ~ ~ container.24 air
replaceitem block ~ ~ ~ container.25 air
replaceitem block ~ ~ ~ container.26 air
kill @e[tag=dream_item_temp]
execute as @e[type=item,distance=0..2] run data modify entity @s Motion set value [0.0,0.0,0.0]