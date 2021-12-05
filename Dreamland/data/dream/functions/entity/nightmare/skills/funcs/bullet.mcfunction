effect give @a[distance=0..1,tag=!dream_magic_protected] instant_damage 1 0 true
effect give @a[distance=0..1,tag=dream_magic_protected,scores={dream_magic=..10}] instant_damage 1 0 true
effect give @a[distance=0..1,tag=dream_magic_protected,scores={dream_magic=10..}] poison 1 0 true
scoreboard players remove @a[distance=0..1,tag=dream_magic,scores={dream_magic=10..}] dream_magic 10
execute unless entity @a[distance=0..1] if block ~ ~ ~ air positioned ~ ~-0.5 ~ run function dream:entity/nightmare/skills/funcs/bullet