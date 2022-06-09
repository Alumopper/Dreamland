#粒子特效
function dream:particle/spreading_circle/load
#效果
effect give @a[distance=0..20] slowness 5 1 true
effect give @a[distance=0..20] levitation 1 10 true
effect give @a[distance=0..25] instant_damage 1 0 true
effect give @a[distance=0..10] regeneration 30 0 true