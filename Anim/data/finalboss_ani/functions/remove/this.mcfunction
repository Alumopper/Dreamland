#Project generated by Animated Java (https://animated-java.dev/)

scoreboard players set #execute aj.i 0
execute if entity @s[tag=aj.finalboss_ani.root] at @s run function finalboss_ani:remove/zzz/conditional/0
execute if score #execute aj.i matches 0 run function finalboss_ani:remove/zzz/conditional/1