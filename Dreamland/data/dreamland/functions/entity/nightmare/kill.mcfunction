#梦魇被击败
#清扫战场
function dreamland:entity/nightmare/end
#标签清除
tag @a remove dream_fight_nightmare
#治疗玩家
effect give @a instant_health 1 100 false
effect clear @a wither
effect clear @a slowness
#获取梦境之星和记忆碎片
give @p nether_star{CustomModelData:120001,display: {Name: '[{"translate":"item.dreamland.dream_star","italic":false}]'},id:"dreamland:dream_star"} 1
give @p light_blue_dye{CustomModelData: 120034, display: {Name: '[{"translate":"item.dreamland.memory_fragment","italic":false}]'}, id: "dreamland:memory_fragment"} 1
#游戏阶段设置
scoreboard players set dream_gamestage dream_counter 4
scoreboard players set dream_world_collapse dream_counter -3
#准备传送
scoreboard players set dream_pre_tp_to_ted dream_timer 0