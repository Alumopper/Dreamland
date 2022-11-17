#弹幕
execute rotated ~ ~ run summon armor_stand ^ ^ ^2 {NoGravity:true,Invisible:true,Tags:["entity.dream.nightmare_bullet","entity.dream.nightmare_p"]}
execute rotated ~90 ~ run summon armor_stand ^ ^ ^2 {NoGravity:true,Invisible:true,Tags:["entity.dream.nightmare_bullet","entity.dream.nightmare_p"]}
execute rotated ~180 ~ run summon armor_stand ^ ^ ^2 {NoGravity:true,Invisible:true,Tags:["entity.dream.nightmare_bullet","entity.dream.nightmare_p"]}
execute rotated ~270 ~ run summon armor_stand ^ ^ ^2 {NoGravity:true,Invisible:true,Tags:["entity.dream.nightmare_bullet","entity.dream.nightmare_p"]}
execute as @e[tag=entity.dream.nightmare_bullet] at @s facing entity @e[tag=entity.dream.nightmare] eyes rotated ~180 ~ run tp @s ~ ~ ~ ~ ~