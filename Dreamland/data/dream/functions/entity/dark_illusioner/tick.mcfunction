#boss血量显示
execute store result bossbar dream:boss value run data get entity @e[tag=dream_dark_illusioner,limit=1] Health
bossbar set dream:boss name ["---<",{"translate":"dream.name.boss.dark_illusioner"},">---"]
#缓慢
execute as @e[tag=dream_dark_illusioner] at @s run effect give @a[distance=0..5] slowness 1 1
#弹幕流星
execute if predicate dream:1in100 run function dream:entity/dark_illusioner/skill
execute as @e[tag=dream_dark_meteor] at @s run tp @s ~ ~-0.15 ~
    execute at @e[tag=dream_dark_meteor] run particle dust 0.467 0.031 0.322 1 ~ ~ ~ 0.1 0.1 0.1 0.1 5
    #落地溅射伤害
    execute as @e[tag=dream_dark_meteor] at @s unless block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Duration:40,Radius:1.5f,Color:3081028,Effects:[{Id:20,ShowIcon:true,Amplifier:1b}]}
    execute as @e[tag=dream_dark_meteor] at @s unless block ~ ~ ~ air run kill @s
execute at @e[tag=dream_dark_illusioner] if predicate dream:1in100 run summon vex ~ ~ ~
#距离限制
execute as @a at @s unless entity @e[tag=dream_dark_illusioner,distance=..10] run effect give @s poison 1 1
#检测boss是否存活
execute unless entity @e[tag=dream_dark_illusioner] run function dream:entity/dark_illusioner/end
#如果玩家全挂了
execute in dream:nightmare positioned 0 0 0 unless entity @a[distance=0..] run function dream:entity/dark_illusioner/failed