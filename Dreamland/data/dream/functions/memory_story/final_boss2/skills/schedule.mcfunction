#技能定时释放
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 1 run function dream:memory_story/final_boss2/skills/2_1/load
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 2 run function dream:memory_story/final_boss2/skills/2_2/start_ani
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 3 run function dream:memory_story/final_boss2/skills/2_3/load
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 4 run function dream:memory_story/final_boss2/skills/2_4/load
execute if score @e[tag=entity.dream.finalboss2,limit=1] dream_counter matches 5 run function dream:memory_story/final_boss2/skills/2_5/start_ani
#TODO
tellraw @a [{"text": "[DreamOS.Defender/INFO]Current strategy is "},{"score":{"name": "@e[tag=entity.dream.finalboss2,limit=1]","objective": "dream_counter"}}]
#技能指针移动
scoreboard players add @e[tag=entity.dream.finalboss2,limit=1] dream_counter 1
scoreboard players set @e[tag=entity.dream.finalboss2,limit=1,scores={dream_counter=6..}] dream_counter 1

#技能计时
schedule function dream:memory_story/final_boss2/skills/schedule 15s