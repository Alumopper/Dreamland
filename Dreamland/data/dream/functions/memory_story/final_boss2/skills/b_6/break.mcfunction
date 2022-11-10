scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 0
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:set_variant/half
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.shield_rotate/stop
execute as @a[tag=dream_finalboss2] run attribute @s generic.armor base set 10.0