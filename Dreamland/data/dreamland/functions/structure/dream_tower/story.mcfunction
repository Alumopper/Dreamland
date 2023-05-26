#梦境塔Boss剧情延迟
execute if score dream_dreamtowerboss_pre dream_timer matches 0.. run scoreboard players add dream_dreamtowerboss_pre dream_timer 1
execute if score dream_dreamtowerboss_pre dream_timer matches 1 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss1","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 20 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player1"}
execute if score dream_dreamtowerboss_pre dream_timer matches 50 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss2","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 90 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player2"}
execute if score dream_dreamtowerboss_pre dream_timer matches 110 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss3","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 128 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player3","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 193 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss4","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 215 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player4","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 240 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player5"}
execute if score dream_dreamtowerboss_pre dream_timer matches 280 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player6","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 320 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss5","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 360 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player7"}
execute if score dream_dreamtowerboss_pre dream_timer matches 375 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss6","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 410 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player8","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 430 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player9"}
execute if score dream_dreamtowerboss_pre dream_timer matches 450 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss7","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 470 run function dreamland:structure/dream_tower/boss_summon
execute if score dream_dreamtowerboss_pre dream_timer matches 470 run scoreboard players set dream_dreamtowerboss_pre dream_timer -3
execute if score dream_dreamtowerboss_pre dream_timer matches 500 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss8"}
execute if score dream_dreamtowerboss_pre dream_timer matches 530 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss9","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 570 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player10","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 590 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss10"}
execute if score dream_dreamtowerboss_pre dream_timer matches 610 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.boss11","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 660 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player11"}
execute if score dream_dreamtowerboss_pre dream_timer matches 680 run tellraw @a {"translate":"word.dreamland.dream_tower.boss.player12"}
execute if score dream_dreamtowerboss_pre dream_timer matches 681 run scoreboard players set dream_dreamtowerboss_pre dream_timer -4