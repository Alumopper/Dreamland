#当玩家接近原点的时候，触发boss战
execute in dream:nightmare positioned -20 0 -20 if entity @a[dx=40,dy=256,dz=40] run function dream:entity/dark_illusioner/summon