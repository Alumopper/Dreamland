#删除上一个路径点
kill @e[tag=dream_telepoint]
#创建路径点
summon armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Invulnerable:true,Marker:true,Tags:["dream_telepoint"]}
scoreboard players operation @e[tag=dream_telepoint,limit=1,sort=arbitrary] dream_playerno = @s dream_playerno