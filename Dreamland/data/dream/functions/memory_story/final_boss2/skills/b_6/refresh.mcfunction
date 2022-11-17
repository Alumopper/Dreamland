scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 1
kill @e[tag=entity.dream.healing_crystal,limit=6]
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:set_variant/halfwithshield
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.shield_rotate/play
#护盾血量
scoreboard players set dream_finalboss_shieldhp dream_boss_hp 50
#提高防御
execute as @a[tag=entity.dream.finalboss2] run attribute @s generic.armor base set 20.0