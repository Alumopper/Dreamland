#Project generated by Animated Java (https://animated-java.dev/)

summon minecraft:marker ~ ~ ~ {Tags:["entity.dreamland.finalboss2_model","new","aj.finalboss_ani","aj.finalboss_ani.root"]}
execute as @e[type=minecraft:marker,tag=aj.finalboss_ani.root,tag=new,distance=..1,limit=1] rotated ~ 0 run function finalboss_ani:summon/zzz/execute/0
function finalboss_ani:assert_animation_flags