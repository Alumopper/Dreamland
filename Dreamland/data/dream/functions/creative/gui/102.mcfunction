#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#102装备及工具页2
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:1b}]}] run scoreboard players set @s dream_c_page 101
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"dream.gui.creative.back"}'}, tag: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120004, display: {Name: '{"translate":"dream.gui.creative.lastpage"}'}, tag: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120006, display: {Name: '{"translate":"dream.gui.creative.nonext"}'}, tag: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:iron_helmet{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_helmet","italic":false}]'}, tag: {id: "dreamland:unnamed_helmet", type: 1b, infusion: 0b, defaultarmor: 4,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 4, Operation: 0, UUID: [I; 14958484, 1076729488, 189845405, 125006454], Slot: "head"}, {AttributeName: "generic.movement_speed", Amount: -0.005d, Operation: 0, UUID: [I; 562251, 1512166, 5184181, 84185165], Slot: "head"}]}
item replace entity @s container.10 with minecraft:iron_chestplate{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_chestplate","italic":false}]'}, tag: {id: "dreamland:unnamed_chestplate", type: 2b, infusion: 0b, defaultarmor: 7,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 7, Operation: 0, UUID: [I; 14958484, 107688, 1898452405, 1256454], Slot: "chest"}, {AttributeName: "generic.movement_speed", Amount: -0.005d, Operation: 0, UUID: [I; 562251, 1512166, 90421087, 84185165], Slot: "chest"}]}
item replace entity @s container.11 with minecraft:iron_leggings{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_leggings","italic":false}]'}, tag: {id: "dreamland:unnamed_leggings", type: 3b, infusion: 0b, defaultarmor: 6,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 6, Operation: 0, UUID: [I; 14958484, 1076729488, 6188, 7474251], Slot: "legs"}, {AttributeName: "generic.movement_speed", Amount: -0.005d, Operation: 0, UUID: [I; 562251, 1512166, 5184181, 77520802], Slot: "legs"}]}
item replace entity @s container.12 with minecraft:iron_boots{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_boots","italic":false}]'}, tag: {id: "dreamland:unnamed_boots", type: 4b, infusion: 0b, defaultarmor: 3,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 14774, 107679088, 105405, 120006454], Slot: "feet"}, {AttributeName: "generic.movement_speed", Amount: -0.02d, Operation: 0, UUID: [I; 562251, 1512166, 58085860, 84185165], Slot: "feet"}]}
item replace entity @s container.13 with minecraft:diamond_sword{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_sword","italic":false}]'}, tag: {id: "dreamland:unnamed_sword", type: 101b, infusion: 0b, defaultdamage: 8.3d,isTemp: 0b}, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 8.3d, Operation: 0, UUID: [I; 98441, 1027158888, 1898994005, 860320107]}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -2.8d, Operation: 0, UUID: [I; 508088, 25562484, 1898994005, 860320107]}]}
item replace entity @s container.14 with minecraft:iron_axe{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_axe","italic":false}]'}, tag: {id: "dreamland:unnamed_axe", type: 5b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.15 with minecraft:diamond_pickaxe{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_pickaxe","italic":false}]'}, tag: {id: "dreamland:unnamed_pickaxe", type: 6b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.16 with minecraft:diamond_shovel{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_shovel","italic":false}]'}, tag: {id: "dreamland:unnamed_shovel", type: 7b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.17 with minecraft:diamond_hoe{CustomModelData: 120003, display: {Name: '[{"translate":"dream.item.name.unnamed_hoe","italic":false}]'}, tag: {id: "dreamland:unnamed_hoe", type: 8b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.18 with minecraft:diamond_helmet{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_helmet","italic":false}]'}, tag: {id: "dreamland:dream_god_helmet", type: 1b, infusion: 0b, defaultarmor: 4,isTemp: 0b}, AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 4, Operation: 0, UUID: [I; 14958484, 412403732, 5405, 1256454]}], Unbreakable: true}
item replace entity @s container.19 with minecraft:diamond_chestplate{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_chestplate","italic":false}]'}, tag: {id: "dreamland:dream_god_chestplate", type: 2b, infusion: 0b, defaultarmor: 7,isTemp: 0b}, AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 7, Operation: 0, UUID: [I; 14958484, 710022, 189845405, 1256454]}], Unbreakable: true}
item replace entity @s container.20 with minecraft:diamond_leggings{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_leggings","italic":false}]'}, tag: {id: "dreamland:dream_god_leggings", type: 3b, infusion: 0b, defaultarmor: 6,isTemp: 0b}, AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6, Operation: 0, UUID: [I; 14958484, 1076729488, 455578, 1256454]}], Unbreakable: true}
item replace entity @s container.21 with minecraft:diamond_boots{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_boots","italic":false}]'}, tag: {id: "dreamland:dream_god_boots", type: 4b, infusion: 0b, defaultarmor: 3,isTemp: 0b}, AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 14958484, 1076729488, 189845405, 428002104]}], Unbreakable: true}
item replace entity @s container.22 with minecraft:diamond_sword{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_sword","italic":false}]'}, tag: {id: "dreamland:dream_god_sword", type: 101b, infusion: 0, defaultdamage: 8.3d,isTemp: 0b}, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 8.5d, Operation: 0, UUID: [I; 1848055, 25562484, 1898994005, 860320107]}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -2.3d, Operation: 0, UUID: [I; 508088, 25562484, 1898994005, 860320107]}], Unbreakable: true}
item replace entity @s container.23 with minecraft:diamond_axe{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_axe","italic":false}]'}, tag: {id: "dreamland:dream_god_axe", type: 5b, infusion: 0b,isTemp: 0b}, Unbreakable: true}
item replace entity @s container.24 with minecraft:diamond_pickaxe{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_pickaxe","italic":false}]'}, tag: {id: "dreamland:dream_god_pickaxe", type: 6b, infusion: 0b,isTemp: 0b}, Unbreakable: true}
item replace entity @s container.25 with minecraft:diamond_shovel{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_shovel","italic":false}]'}, tag: {id: "dreamland:dream_god_shovel", type: 7b, infusion: 0b,isTemp: 0b}, Unbreakable: true}
item replace entity @s container.26 with minecraft:diamond_hoe{CustomModelData: 120004, display: {Name: '[{"translate":"dream.item.name.dream_god_hoe","italic":false}]'}, tag: {id: "dreamland:dream_god_hoe", type: 8b, infusion: 0b,isTemp: 0b}, Unbreakable: true}
