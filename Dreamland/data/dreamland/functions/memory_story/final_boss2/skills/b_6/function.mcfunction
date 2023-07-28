#法抗
execute as @e[distance=0..3,tag=entity.dreamland.magicball.pure] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 4
execute as @e[distance=0..3,tag=entity.dreamland.magicball.end] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 3
execute as @e[distance=0..3,tag=entity.dreamland.magicball.chaos] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 6
kill @e[tag=entity.dreamland.magicball,distance=0..3]
#物抗
execute as @e[distance=0..3,type=arrow] run scoreboard players remove dream_finalboss_shieldhp dream_boss_hp 2
kill @e[type=arrow,distance=0..2]