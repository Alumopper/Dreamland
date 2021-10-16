#above_the_cloud
execute positioned 0 60 0 run advancement grant @a[distance=0..30,predicate=dream:if_entity/in_sweetdream] only dream:alpha/above_the_cloud
execute positioned 0 60 0 if entity @a[distance=0..60] run execute in dream:sweetdream unless block 0 53 0 bedrock run function dream:structure/dream_tower/generation1