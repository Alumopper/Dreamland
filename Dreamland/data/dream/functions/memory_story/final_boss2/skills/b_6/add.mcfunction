kill @e[tag=entity.dream.healing_crystal,limit=6]
#护盾血量
scoreboard players add dream_finalboss_shieldhp dream_boss_hp 30
execute if score dream_finalboss_shieldhp dream_boss_hp matches 70.. run scoreboard players set dream_finalboss_shieldhp dream_boss_hp 70
#提高防御
execute as @a[tag=entity.dream.finalboss2] run effect give @e[tag=entity.dream.finalboss2] resistance 114514 3
#bossbar
bossbar set dream:boss_sheild color blue
execute store result bossbar dream:boss_sheild max run scoreboard players get dream_finalboss_shieldhp dream_boss_hp
bossbar set dream:boss_sheild players @a
bossbar set dream:boss_sheild name "System.core.sheild"
bossbar set dream:boss_sheild visible true