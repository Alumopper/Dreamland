#挖掘虚空矿
kill @s
summon area_effect_cloud ~ ~ ~ {Tags:["block.dreamland.void_ore.ball"],Duration:400,Radius:0}
particle flash ~ ~ ~ 0.01 0.01 0.01 0.00001 1
kill @e[tag=entity.dreamland.magicball,distance=0..1.5]