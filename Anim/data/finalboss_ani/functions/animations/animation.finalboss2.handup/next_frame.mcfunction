#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
execute rotated ~ 0 as @e[type=#finalboss_ani:bone_entities,tag=aj.finalboss_ani.bone,distance=..3.168] if score @s aj.id = .this aj.id run function finalboss_ani:animations/animation.finalboss2.handup/tree/trunk
scoreboard players operation @s aj.frame += .aj.finalboss_ani.framerate aj.i
scoreboard players set .aj.animation aj.finalboss_ani.animating 1
execute unless score @s aj.frame matches 0..15 run function finalboss_ani:animations/animation.finalboss2.handup/edge