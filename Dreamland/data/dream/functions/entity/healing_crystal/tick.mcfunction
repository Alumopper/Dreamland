#治疗光环
execute at @s[tag=dream_cyst_green] run effect give @a[predicate=!dream:effects/regeration] regeneration 10 3 false
#治疗导弹
scoreboard players add @s[tag=dream_cyst_blue] dream_timer 1
execute at @s[tag=dream_cyst_blue] if score @s dream_timer matches 160.. facing entity @p eyes run tp @s ^ ^ ^0.1
execute at @s[tag=dream_cyst_blue] if score @s dream_timer matches 360.. facing entity @p eyes run kill @s
execute at @s[tag=dream_cyst_blue] run effect give @a[distance=0..2] instant_health 1 2
execute at @s[tag=dream_cyst_blue] if entity @a[distance=0..2] run kill @s
# ===* 炫 * 酷 * 祖 * 传 * 粒 * 子 * 特 * 效 *===>
execute at @s[tag=dream_cyst_blue] run particle dust 0.078 0.624 0.718 1 ~ ~ ~ 0.5 0.5 0.5 0.1 2
execute at @s[tag=dream_cyst_green] run particle dust 0.078 0.718 0.549 1 ~ ~ ~ 1 0.5 0.5 0.1 2
#受伤
execute at @s if entity @e[tag=choas_magicball,distance=0..1.5] run function dream:entity/healing_crystal/kill
execute at @s if entity @e[tag=dream_magicball,distance=0..1.2] run function dream:entity/healing_crystal/kill
execute at @s if entity @e[type=arrow,distance=0..1.2] run function dream:entity/healing_crystal/kill