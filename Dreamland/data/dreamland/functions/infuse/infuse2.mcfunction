#获取注魔工具类型
#剑-101，头盔-1，胸甲-2，护腿-3，靴子-4，斧子-5，镐子-6，铲子-7，锄头-8，鞘翅-9，盾牌-10，法杖-11，梦境护符-12
execute store result score dream_infuse_tool_type dream_counter run data get block ~ ~ ~ Items[4].tag.dreamland.type
#TODO 注魔装备
execute if score dream_infuse_tool_type dream_counter matches 101 run function dreamland:infuse/each/sword
execute if score dream_infuse_tool_type dream_counter matches 1 run function dreamland:infuse/each/helmet
execute if score dream_infuse_tool_type dream_counter matches 2 run function dreamland:infuse/each/chestplate
execute if score dream_infuse_tool_type dream_counter matches 3 run function dreamland:infuse/each/leggings
execute if score dream_infuse_tool_type dream_counter matches 4 run function dreamland:infuse/each/boots
execute if score dream_infuse_tool_type dream_counter matches 5 run function dreamland:infuse/each/axe
execute if score dream_infuse_tool_type dream_counter matches 6 run function dreamland:infuse/each/pickaxe
execute if score dream_infuse_tool_type dream_counter matches 7 run function dreamland:infuse/each/shovel
#execute if score dream_infuse_tool_type dream_counter matches 8 run function dreamland:infuse/each/hoe
execute if score dream_infuse_tool_type dream_counter matches 9 run function dreamland:infuse/each/elytra
#execute if score dream_infuse_tool_type dream_counter matches 10 run function dreamland:infuse/each/shield
execute if score dream_infuse_tool_type dream_counter matches 11 run function dreamland:infuse/each/wand
#execute if score dream_infuse_tool_type dream_counter matches 12 run function dreamland:infuse/each/talisman