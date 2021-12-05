tag @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:xp_extract_needle"}}}}] add dream_xp_visible
tag @a[nbt={SelectedItem:{tag:{tag:{id:"dreamland:magic_plate"}}}}] add dream_xp_visible
tag @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:magic_plate"}}}]}] add dream_xp_visible
tag @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:xp_extract_needle"}}}]}] add dream_xp_visible
execute as @a if entity @s[tag=dream_xp_visible] run function dream:items/xp_display
bossbar set dream:xp players @a[tag=dream_xp_visible]
tag @a remove dream_xp_visible
#副手持有载魔盘释放经验
execute if score xp dream_xp matches 1.. as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:magic_plate"}}}]}] run function dream:items/getxp
#副手持有经验抽针快速吸经验
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:xp_extract_needle"}}}]},scores={dream_p_xp=10..}] if score xp dream_xp matches ..9990 run function dream:items/xp_extract_needle
#矿物探测器高频
execute as @e[type=area_effect_cloud,tag=dream_mineral_detector] run function dream:items/mineral_detector_tick
#检测玩家身上是否有梦境护符
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_tailsman"}}}]}] run tag @s add dream_magic_protected
execute as @a[tag=dream_magic_protected] at @s run function dream:items/dream_tailsman
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{tag:{id:"dreamland:dream_tailsman"}}}]}] run tag @s remove dream_magic_protected
#移动魔法球
execute as @e[tag=dream_magicball] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=dream_magicball_boss] at @s run tp @s ^ ^ ^0.8
execute as @e[tag=choas_magicball] at @s run tp @s ^ ^ ^0.6
execute as @e[tag=dream_weak_magicball] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=dream_magicball_speed] at @s run tp @s ^ ^ ^0.5
#end魔法球的追踪
execute as @e[tag=dream_endmagicball] at @s facing entity @e[type=#dream:enemy,distance=0..75,limit=1,sort=nearest] eyes run tp ^ ^ ^0.6
#为魔法球添加粒子特效
execute at @e[tag=dream_magicball] run particle dust 0.24313725490196078 0.7843137254901961 1 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=dream_magicball_boss] run particle dust 0.784 0.243 1 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=choas_magicball] run particle dust 1 0.9294117647058824 0.30980392156862746 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=dream_weak_magicball] run particle dust 0.51 0.969 0.369 1 ~ ~ ~ 0.1 0.1 0.1 0 20
execute at @e[tag=dream_exmagicball_fire] run particle dust 1 0.341 0.227 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=dream_exmagicball_natural] run particle dust 0.208 0.565 0 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=dream_exmagicball_water] run particle dust 0.059 0.263 0.925 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=dream_exmagicball_void] run particle dust 0.553 0.553 0.553 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=dream_exmagicball_ender] run particle dust 0.463 0.11 0.925 1 ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=dream_endmagicball] run particle dust 0.463 0.11 0.925 1 ~ ~ ~ 0.1 0.1 0.1 0 10
#为魔法球添加伤害效果
execute at @e[tag=dream_magicball] as @e[type=#dream:undead_mobs,distance=0..1.5] run effect give @s instant_health 1 0 false
execute at @e[tag=dream_magicball] as @e[type=#dream:enemy,distance=0..1.5] if entity @s[type=!#dream:undead_mobs] run effect give @s instant_damage 1 0 false
execute at @e[tag=dream_endmagicball] as @e[type=#dream:undead_mobs,distance=0..1.5] run effect give @s instant_health 1 0 false
execute at @e[tag=dream_endmagicball] as @e[type=#dream:enemy,distance=0..1.5] if entity @s[type=!#dream:undead_mobs] run effect give @s instant_damage 1 0 false
execute at @e[tag=choas_magicball] as @e[type=#dream:undead_mobs,distance=0..2] run effect give @s instant_health 1 1 false
execute at @e[tag=choas_magicball] as @e[type=#dream:enemy,distance=0..2] if entity @s[type=!#dream:undead_mobs] run effect give @s instant_damage 1 1 false
execute at @e[tag=dream_magicball_boss] as @a[distance=0..2.0] run effect give @s instant_damage 1 1 false
execute at @e[tag=dream_weak_magicball,tag=dream_player_friendly] as @e[distance=0..2.0,type=#dream:enemy] run effect give @s poison 3 2 false
execute at @e[tag=dream_weak_magicball,tag=!dream_player_friendly] as @a[distance=0..2.0] run effect give @s poison 3 2 false
execute at @e[tag=dream_magicball_poison] as @e[type=#dream:enemy,distance=0..2] run effect give @s poison 10 2 false
#魔法球的额外效果
execute as @e[tag=dream_exmagicball_fire] at @s run function dream:items/wand_crystal/add/fire
execute as @e[tag=dream_exmagicball_natural] at @s run function dream:items/wand_crystal/add/natural
execute as @e[tag=dream_exmagicball_water] at @s run function dream:items/wand_crystal/add/water
execute as @e[tag=dream_exmagicball_void] at @s run function dream:items/wand_crystal/add/void
execute as @e[tag=dream_exmagicball_ender,tag=!dream_exmagicball_ender_used] at @s run function dream:items/wand_crystal/add/ender
execute as @e[tag=dream_endmagicball] at @s if entity @e[distance=0..1.5,type=#dream:enemy] run kill @s
#魔法球挖掘虚空矿
execute at @e[tag=choas_magicball] as @e[tag=dream_void_ore,distance=0..1.5] at @s run function dream:entity/void_ore/dig
execute at @e[tag=dream_magicball] as @e[tag=dream_void_ore,distance=0..1] at @s run function dream:entity/void_ore/dig
#云的消散
execute as @e[tag=dream_cloud,scores={dream_clouddrt=1200}] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 10
execute as @e[tag=dream_cloud,scores={dream_clouddrt=1200}] at @s run kill @s
execute as @e[tag=dream_cloud] at @s run scoreboard players add @s dream_clouddrt 1
#漂浮在云中
execute as @a at @s if entity @e[tag=dream_cloud,distance=0..1] run tag @s add dream_effect_levitation256
#路径点显示
execute at @e[tag=dream_telepoint] run particle dust 0.027 0.494 0.808 1 ~ ~ ~ 0.1 2 0.1 0.1 10