#region 设置玩家的血量上限
execute if score dream_finalbosshealth dream_boss_hp matches 0..31 as @a run function dreamland:memory_story/final_boss2/healthset/zip/4_0
execute if score dream_finalbosshealth dream_boss_hp matches 32..63 as @a run function dreamland:memory_story/final_boss2/healthset/zip/4_1
execute if score dream_finalbosshealth dream_boss_hp matches 64..95 as @a run function dreamland:memory_story/final_boss2/healthset/zip/4_2
execute if score dream_finalbosshealth dream_boss_hp matches 95..127 as @a run function dreamland:memory_story/final_boss2/healthset/zip/4_3
execute if score dream_finalbosshealth dream_boss_hp matches 128..159 as @a run function dreamland:memory_story/final_boss2/healthset/zip/4_4
#endregion
#清除血量上限效果
effect give @s instant_health 
schedule function dreamland:memory_story/final_boss2/healthset/clear 2t
#