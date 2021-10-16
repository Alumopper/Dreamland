#发射魔法球
summon area_effect_cloud ^ ^ ^0.1 {Tags:[dream_magicball_boss],Duration:100,Radius:0.0f}
tp @e[tag=dream_magicball_boss,limit=1,sort=nearest] ^ ^ ^0.1 ~ ~
scoreboard players set dream_boss1_skillcd1 dream_timer 0