#魔法充能与冷却
execute as @a if score @s dream_wanduse_cd matches 55.. run scoreboard players add @s dream_magic_regeneration 1
execute as @a if score @s dream_wanduse_cd matches 190.. run scoreboard players add @s dream_magic_regeneration 1
execute as @a if score @s dream_magic_regeneration matches 15.. if score @s dream_magic matches ..79 run scoreboard players add @s dream_magic 1
execute as @a if score @s dream_magic_regeneration matches 15.. run scoreboard players set @s dream_magic_regeneration 0
#获得云
execute as @a[tag=!bool.HasCloudGun] run scoreboard players set @s block.dream.cloudcd 0
execute as @a[tag=bool.HasCloudGun] run scoreboard players add @s block.dream.cloudcd 1
execute as @a if score @s block.dream.cloudcd matches 2000 run give @s light_blue_dye{CustomModelData:120022,id:"dreamland:cloud",display:{Name:'[{"translate":"item.dreamland.cloud","italic": false}]'}}
execute as @a if score @s block.dream.cloudcd matches 2000 run scoreboard players set @s block.dream.cloudcd 0
#混沌前计时器
function dreamland:timer/dream
#混沌后计时器
function dreamland:timer/chaos
#法杖cd
execute as @a[scores={dream_wanduse_cd=..200}] run scoreboard players add @s dream_wanduse_cd 1