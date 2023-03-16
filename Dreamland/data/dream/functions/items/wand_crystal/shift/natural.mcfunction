#持续恢复
particle happy_villager ~ ~0.5 ~ 5 0.1 5 0.5 50
effect give @a[distance=..5] regeneration 1 3
scoreboard players remove @s[gamemode=!creative] dream_magic 4
scoreboard players set @s dream_wanduse_cd 0