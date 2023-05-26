scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 0
scoreboard players set dream_finalboss_shieldhp dream_boss_hp 0
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:set_variant/half
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.shield_rotate/stop
effect clear @e[tag=entity.dream.finalboss2] resistance
#bossbar
bossbar set dreamland:boss_sheild visible false