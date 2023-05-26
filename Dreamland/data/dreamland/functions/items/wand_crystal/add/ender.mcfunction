#多重魔法球
tag @s add entity.dream.magicball.cryst.ender_used
execute if entity @e[type=#dreamland:enemy,distance=0..75] rotated ~10 ~ run summon area_effect_cloud ^ ^ ^0.09 {Tags:[entity.dream.magicball.end,entity.dream.magicball,dream_just],Duration:1200,Radius:0.0f}
scoreboard players set @e[tag=dream_just] dream_magicball_energy 150
tag @e remove dream_just