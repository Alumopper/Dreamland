#Project generated by Animated Java (https://animated-java.dev/)

tag @s add aj.finalboss_ani.anim.animation.finalboss2.ray
execute if score .aj.finalboss_ani.framerate aj.i matches ..-1 run scoreboard players set @s aj.frame 51
execute if score .aj.finalboss_ani.framerate aj.i matches 1.. run scoreboard players set @s aj.frame 0
scoreboard players add .noScripts aj.i 0
execute if score .aj.anim_loop aj.finalboss_ani.animating matches 0 run function finalboss_ani:animation_loop
scoreboard players set #execute aj.i 1