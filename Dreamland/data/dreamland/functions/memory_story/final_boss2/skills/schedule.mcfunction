#技能定时释放
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 0 run schedule function dreamland:memory_story/final_boss2/skills/schedule 5s
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 1 run function dreamland:memory_story/final_boss2/skills/2_1/load
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 2 run function dreamland:memory_story/final_boss2/skills/2_2/start_ani
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 3 run function dreamland:memory_story/final_boss2/skills/2_3/load
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 4 run function dreamland:memory_story/final_boss2/skills/2_4/load
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 5 run function dreamland:memory_story/final_boss2/skills/2_5/start_ani
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 6 run function dreamland:memory_story/final_boss2/skills/2_6/load
#TODO
tellraw @a [{"text": "[DreamOS.Defender/INFO]Current strategy is "},{"score":{"name": "@e[tag=entity.dream.finalboss2,limit=1]","objective": "dream_counter"}}]
#技能指针移动
scoreboard players add @e[tag=entity.dream.finalboss2,limit=1] dream_counter 1
execute if score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run scoreboard players set @e[tag=entity.dream.finalboss2,limit=1,scores={dream_counter=7..}] dream_counter 1
execute unless score dream_temp.ma.fb2_temp.stage dream_counter matches 1 run scoreboard players set @e[tag=entity.dream.finalboss2,limit=1,scores={dream_counter=6..}] dream_counter 1