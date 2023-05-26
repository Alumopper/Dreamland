#发射魔法球
summon area_effect_cloud ^ ^ ^0.1 {Tags:[entity.dreamland.magicball.boss,dream_just],Duration:1200,Radius:0.0f}
scoreboard players set @e[tag=dream_just] dream_magicball_energy 100
tp @e[tag=dream_just] ^ ^ ^0.1 ~ ~
scoreboard players set dream_boss1_skillcd1 dream_timer 0
tag @e[tag=dream_just] remove dream_just