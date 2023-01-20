particle flash ~ ~ ~ 0.1 0.1 0.1 0.5 3
effect give @a[distance=0..3] instant_health 1 2 false
effect give @a[distance=0..3] regeneration 6 3 false
summon area_effect_cloud ~ ~ ~ {Duration:300,Radius:3,Color:4709070,Effects:[{Amplifier:2,Id:10b,Duration:30},{Id:2b}]}