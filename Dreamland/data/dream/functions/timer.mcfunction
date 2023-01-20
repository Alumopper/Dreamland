#魔法充能与冷却
execute as @a if score @s dream_wanduse_cd matches 55.. run scoreboard players add @s dream_magic_regeneration 1
execute as @a if score @s dream_wanduse_cd matches 190.. run scoreboard players add @s dream_magic_regeneration 1
execute as @a if score @s dream_magic_regeneration matches 15.. if score @s dream_magic matches ..79 run scoreboard players add @s dream_magic 1
execute as @a if score @s dream_magic_regeneration matches 15.. run scoreboard players set @s dream_magic_regeneration 0
#获得云
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{tag:{id:"dreamland:cloud_gun"}}}]}] run scoreboard players set @s block.dream.cloudcd 0
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{tag:{id:"dreamland:cloud_gun"}}}]}] run scoreboard players add @s block.dream.cloudcd 1
execute as @a if score @s block.dream.cloudcd matches 2000 run give @s light_blue_dye{CustomModelData:120022,tag:{id:"dreamland:cloud"},display:{Name:'[{"translate":"item.dreamland.cloud","italic": false}]'}}
execute as @a if score @s block.dream.cloudcd matches 2000 run scoreboard players set @s block.dream.cloudcd 0
#混沌前计时器
function dream:timer/dream
#混沌后计时器
function dream:timer/choas
#蓝色史莱姆的寿命
execute as @e[tag=entity.dream.balloon_slime] run scoreboard players add @s dream_timer 1
execute as @e[tag=entity.dream.balloon_slime,scores={dream_timer=1200..}] at @s run particle dust 0.094 0.745 0.945 0.75 ~ ~ ~ 0.2 0.2 0.2 0.1 10
execute as @e[tag=entity.dream.balloon_slime,scores={dream_timer=1200..}] run tp @s ~ -100 ~
execute as @e[tag=entity.dream.balloon_slime,scores={dream_timer=1200..}] run scoreboard players reset @s dream_timer
execute as @e[tag=entity.dream.chaser] run scoreboard players add @s dream_timer 1
#法杖cd
execute as @a[scores={dream_wanduse_cd=..200}] run scoreboard players add @s dream_wanduse_cd 1