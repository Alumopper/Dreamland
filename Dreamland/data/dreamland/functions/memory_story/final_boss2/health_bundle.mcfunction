#tellraw @a {"score":{"name":"dream_players_maxhealth","objective":"dream_counter"}}
#tellraw @a {"score":{"name":"dream_finalbosshealth","objective":"dream_boss_hp"}}
#获取boss以前的血量
execute store result score dream_finalbaosslegacyhealth dream_counter run bossbar get dreamland:boss value
#若boss血量减少，扣除玩家相应血量
execute unless score dream_finalbosshealth dream_boss_hp = dream_finalbaosslegacyhealth dream_counter as @a run function dreamland:memory_story/final_boss2/healthset/sethealth
#否则则为玩家血量上升，增加boss血量
execute if score dream_finalbosshealth dream_boss_hp = dream_finalbaosslegacyhealth dream_counter run function dreamland:memory_story/final_boss2/regeneration
