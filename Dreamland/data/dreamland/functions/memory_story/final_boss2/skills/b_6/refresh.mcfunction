scoreboard players set dream_temp.mb.fb2.s.b6_hassheild dream_counter 1
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:set_variant/halfwithshield
execute as @e[tag=aj.finalboss_ani.root] run function finalboss_ani:animations/animation.finalboss2.shield_rotate/play
#叠加护盾
function dreamland:memory_story/final_boss2/skills/b_6/add