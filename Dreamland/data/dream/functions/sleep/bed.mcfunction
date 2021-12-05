#生成床
kill @e[tag=dream_bed,distance=0..1]
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Small:1b,Tags:[dream_bed]}
playsound minecraft:block.end_portal.spawn block @a[distance=0..30] ~ ~ ~
advancement grant @a[distance=0..5] only dream:alpha/goodnight
kill @s