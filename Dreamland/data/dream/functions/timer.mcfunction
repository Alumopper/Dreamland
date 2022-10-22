#魔法充能与冷却
execute if score #magic_time dream_timer matches ..14 run scoreboard players add #magic_time dream_timer 1
execute as @a if score #magic_time dream_timer matches 15.. if score @s dream_magic matches ..79 run scoreboard players add @s dream_magic 1
execute if score #magic_time dream_timer matches 15.. run scoreboard players set #magic_time dream_timer 0
#获得云
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{tag:{id:"dreamland:cloud_gun"}}}]}] run scoreboard players set @s dream_cloudcd 0
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{tag:{id:"dreamland:cloud_gun"}}}]}] run scoreboard players add @s dream_cloudcd 1
execute as @a if score @s dream_cloudcd matches 2000 run give @s light_blue_dye{CustomModelData:120022,tag:{id:"dreamland:cloud"},display:{Name:'[{"translate":"item.dreamland.cloud","italic": false}]'}}
execute as @a if score @s dream_cloudcd matches 2000 run scoreboard players set @s dream_cloudcd 0
#混沌前计时器
function dream:timer/dream
#混沌后计时器
function dream:timer/choas
#蓝色史莱姆的寿命
execute as @e[tag=dream_balloon_slime] run scoreboard players add @s dream_timer 1
execute as @e[tag=dream_balloon_slime,scores={dream_timer=1200..}] at @s run particle dust 0.094 0.745 0.945 0.75 ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @e[tag=dream_balloon_slime,scores={dream_timer=1200..}] run tp @s ~ -100 ~
execute as @e[tag=dream_balloon_slime,scores={dream_timer=1200..}] run scoreboard players reset @s dream_timer
execute as @e[tag=dream_chaser] run scoreboard players add @s dream_timer 1