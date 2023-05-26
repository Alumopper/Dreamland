#随机抽取五个实体
tp @e[limit=5,type=#dreamland:enemy,distance=..10,sort=random] ~ -255 ~
particle dust 0.286 0.286 0.286 0 ~ ~ ~ 3 3 3 1 30
#消耗
scoreboard players remove @s[gamemode=!creative] dream_magic 60
scoreboard players set @s dream_wanduse_cd 0