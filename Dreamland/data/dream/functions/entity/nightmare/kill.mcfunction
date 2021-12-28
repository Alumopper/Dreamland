#梦魇被击败
#清扫战场
function dream:entity/nightmare/end
#标签清除
tag @a remove dream_fight_nightmare
#治疗玩家
effect give @a instant_health 1 100 false
effect clear @a wither
effect clear @a slowness
#获取梦境之星和记忆碎片
give @p nether_star{CustomModelData:120001,display: {Name: '[{"translate":"dream.item.name.dream_star","italic":false}]'},tag:{id:"dreamland:dream_star"}} 1
give @p light_blue_dye{CustomModelData: 120034, display: {Name: '[{"translate":"dream.item.name.memory_fragment","italic":false}]'}, tag: {id: "dreamland:memory_fragment"}} 1
#游戏阶段设置
scoreboard players set dream_gamestage dream_counter 4
#准备传送
scoreboard players set dream_pre_tp_to_ted dream_timer 0