#梦境塔Boss剧情延迟
execute if score dream_dreamtowerboss_pre dream_timer matches 0.. run scoreboard players add dream_dreamtowerboss_pre dream_timer 1
execute if score dream_dreamtowerboss_pre dream_timer matches 1 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss1","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 20 run tellraw @a {"translate":"word.dream.dream_tower.boss.player1"}
execute if score dream_dreamtowerboss_pre dream_timer matches 50 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss2","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 90 run tellraw @a {"translate":"word.dream.dream_tower.boss.player2"}
execute if score dream_dreamtowerboss_pre dream_timer matches 130 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss3","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 130 run scoreboard players set dream_dreamtowerboss_pre dream_timer -2
execute if score dream_dreamtowerboss_pre dream_timer matches 133 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss4","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 150 run function dream:structure/dream_tower/boss_summon
execute if score dream_dreamtowerboss_pre dream_timer matches 150 run scoreboard players set dream_dreamtowerboss_pre dream_timer -3
execute if score dream_dreamtowerboss_pre dream_timer matches 220 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss5","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 250 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss6","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 280 run tellraw @a {"translate":"word.dream.dream_tower.boss.player3"}
execute if score dream_dreamtowerboss_pre dream_timer matches 320 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss7","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 380 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss8","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 440 run tellraw @a {"translate":"word.dream.dream_tower.boss.player4"}
execute if score dream_dreamtowerboss_pre dream_timer matches 490 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss9","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 530 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss10","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 570 run tellraw @a {"translate":"word.dream.dream_tower.boss.player5"}
execute if score dream_dreamtowerboss_pre dream_timer matches 660 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss11","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 700 run tellraw @a {"translate":"word.dream.dream_tower.boss.player6"}
execute if score dream_dreamtowerboss_pre dream_timer matches 750 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss12","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 820 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss13","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 850 run tellraw @a {"translate":"word.dream.dream_tower.boss.player7"}
execute if score dream_dreamtowerboss_pre dream_timer matches 900 run tellraw @a {"translate":"word.dream.dream_tower.boss.boss14","color": "gray","italic": true}
execute if score dream_dreamtowerboss_pre dream_timer matches 950 run tellraw @a {"translate":"word.dream.dream_tower.boss.player8"}
execute if score dream_dreamtowerboss_pre dream_timer matches 1050 run tellraw @a {"translate":"word.dream.dream_tower.boss.player9"}
execute if score dream_dreamtowerboss_pre dream_timer matches 1050 run scoreboard players set dream_dreamtowerboss_pre dream_timer -4