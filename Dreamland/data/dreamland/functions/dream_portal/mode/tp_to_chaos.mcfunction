#进入混沌
execute if score dream_world_collapse dream_timer matches -2 as @a in dreamland:chaos run tp @s ~ ~ ~
execute if score dream_world_collapse dream_timer matches -2 as @a in dreamland:chaos run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air
execute if score dream_world_collapse dream_timer matches -2 as @a in dreamland:chaos run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 bedrock
execute if score dream_world_collapse dream_timer matches -2 as @a in dreamland:chaos run scoreboard players set dream_world_collapse dream_timer 120001
#爆炸
summon tnt ~ ~ ~
execute unless entity @e[tag=dream_returnpoint] run summon marker ~ ~ ~ {Tags:["dream_returnpoint"]}
#如果没有黑洞则初始化黑洞
execute unless entity @e[tag=dream_blackhole] run function dreamland:structure/black_hole/load