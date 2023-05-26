#弹幕
execute rotated ~ ~ run summon marker ^ ^ ^2 {Tags:["entity.dreamland.nightmare_bullet","entity.dreamland.nightmare_p"]}
execute rotated ~90 ~ run summon marker ^ ^ ^2 {Tags:["entity.dreamland.nightmare_bullet","entity.dreamland.nightmare_p"]}
execute rotated ~180 ~ run summon marker ^ ^ ^2 {Tags:["entity.dreamland.nightmare_bullet","entity.dreamland.nightmare_p"]}
execute rotated ~270 ~ run summon marker ^ ^ ^2 {Tags:["entity.dreamland.nightmare_bullet","entity.dreamland.nightmare_p"]}
execute as @e[tag=entity.dreamland.nightmare_bullet] at @s facing entity @e[tag=entity.dreamland.nightmare] eyes rotated ~180 ~ run tp @s ~ ~ ~ ~ ~