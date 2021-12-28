#above_the_cloud
execute in dream:sweetdream positioned 0 60 0 run advancement grant @a[distance=0..60,predicate=dream:if_entity/in_sweetdream] only dream:alpha/above_the_cloud
execute if score dream_gamestage dream_counter matches 1 in dream:sweetdream positioned 0 60 0 if entity @a[distance=0..60] run execute in dream:sweetdream unless block 0 53 0 bedrock run function dream:structure/dream_tower/generation1
#dark_illusioner
execute in dream:nightmare positioned 0 60 0 run advancement grant @a[x=-5,z=-5,y=0,dx=10,dy=256,dz=10,predicate=dream:if_entity/in_nightmare] only dream:alpha/dark_illusioner
