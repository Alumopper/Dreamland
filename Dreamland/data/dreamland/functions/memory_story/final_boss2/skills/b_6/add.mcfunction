kill @e[tag=entity.dreamland.healing_crystal,limit=6]
#护盾血量
scoreboard players add dream_finalboss_shieldhp dream_boss_hp 40
execute if score dream_finalboss_shieldhp dream_boss_hp matches 120.. run scoreboard players set dream_finalboss_shieldhp dream_boss_hp 120
#提高防御
execute as @a[tag=entity.dreamland.finalboss2] run effect give @e[tag=entity.dreamland.finalboss2] resistance 114514 3
#bossbar
bossbar set dreamland:boss_sheild color blue
execute store result bossbar dreamland:boss_sheild max run scoreboard players get dream_finalboss_shieldhp dream_boss_hp
bossbar set dreamland:boss_sheild players @a
bossbar set dreamland:boss_sheild name "System.core.sheild"
bossbar set dreamland:boss_sheild visible true