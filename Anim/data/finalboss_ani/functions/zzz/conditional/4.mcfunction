#Project generated by Animated Java (https://animated-java.dev/)

tp @s ~ ~ ~ ~ ~
scoreboard players operation .this aj.id = @s aj.id
scoreboard players operation .this aj.frame = @s aj.frame
scoreboard players set # aj.i 0
execute if entity @s[tag=aj.finalboss_ani.anim.animation.finalboss2.ray] run function finalboss_ani:zzz/execute/5
execute if entity @s[tag=aj.finalboss_ani.anim.animation.finalboss2.up] run function finalboss_ani:zzz/execute/8
execute if entity @s[tag=aj.finalboss_ani.anim.animation.finalboss2.down] run function finalboss_ani:zzz/execute/11
execute if entity @s[tag=aj.finalboss_ani.anim.animation.finalboss2.handup] run function finalboss_ani:zzz/execute/14
execute if entity @s[tag=aj.finalboss_ani.anim.animation.finalboss2.handdown] run function finalboss_ani:zzz/execute/17
execute if entity @s[tag=aj.finalboss_ani.anim.animation.finalboss2.shield_rotate] run function finalboss_ani:zzz/execute/20
execute if score # aj.i matches 0 run function finalboss_ani:zzz/execute/23
scoreboard players set #execute aj.i 1