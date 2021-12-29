#页数说明
#页数的格式为XXX,从左起第一位代表分类，后两位代表在该分类下的具体位数。
#101装备及工具页1
#---------------------------------------------------------
#交互
execute if entity @s[nbt=!{Items:[{Slot:0b}]}] run scoreboard players set @s dream_c_page 1
execute if entity @s[nbt=!{Items:[{Slot:2b}]}] run scoreboard players set @s dream_c_page 102
#维持界面正常
item replace entity @s container.0 with red_dye{CustomModelData: 120002, display: {Name: '{"translate":"dream.gui.creative.back"}'}, tag: {isTemp: 1b}}
item replace entity @s container.1 with red_dye{CustomModelData: 120005, display: {Name: '{"translate":"dream.gui.creative.nolast"}'}, tag: {isTemp: 1b}}
item replace entity @s container.2 with red_dye{CustomModelData: 120003, display: {Name: '{"translate":"dream.gui.creative.nextpage"}'}, tag: {isTemp: 1b}}
item replace entity @s container.3 with air
item replace entity @s container.4 with air
item replace entity @s container.5 with air
item replace entity @s container.6 with air
item replace entity @s container.7 with air
item replace entity @s container.8 with air
item replace entity @s container.9 with minecraft:iron_helmet{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_helmet","italic":false}]'}, tag: {id: "dreamland:dream_org_helmet", type: 1b, infusion: 0b, defaultarmor: 3,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Slot: "head", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 14959984, 1076729488, 189845405, 1256454]}]}
item replace entity @s container.10 with minecraft:iron_chestplate{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_chestplate","italic":false}]'}, tag: {id: "dreamland:dream_org_chestplate", type: 2b, infusion: 0b, defaultarmor: 5,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Slot: "chest", Amount: 5, Operation: 0, UUID: [I; 14958484, 1076729488, 182811115, 1253354]}]}
item replace entity @s container.11 with minecraft:iron_leggings{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_leggings","italic":false}]'}, tag: {id: "dreamland:dream_org_leggings", type: 3b, infusion: 0b, defaultarmor: 4,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Slot: "legs", Name: "generic.armor", Amount: 4, Operation: 0, UUID: [I; 14958484, 10555488, 7821454, 1256454]}]}
item replace entity @s container.12 with minecraft:iron_boots{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.dream_org_boots","italic":false}]'}, tag: {id: "dreamland:dream_org_boots", type: 4b, infusion: 0b, defaultarmor: 2,isTemp: 0b}, AttributeModifiers: [{AttributeName: "generic.armor", Slot: "feet", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; 14958484, 1076729488, 1804848, 1256454]}]}
item replace entity @s container.13 with minecraft:diamond_sword{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_sword","italic":false}]'}, tag: {id: "dreamland:dream_org_sword", type: 101b, infusion: 0b, defaultdamage: 6.2d,isTemp: 0b}, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 6.2d, Operation: 0, UUID: [I; 1498693494, 25562484, 1898994005, 860320107]}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -2.5d, Operation: 0, UUID: [I; 508088, 25562484, 1898994005, 860320107]}]}
item replace entity @s container.14 with minecraft:iron_axe{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_axe","italic":false}]'}, tag: {id: "dreamland:dream_org_axe", type: 5b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.15 with minecraft:diamond_pickaxe{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_pickaxe","italic":false}]'}, tag: {id: "dreamland:dream_org_pickaxe", type: 6b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.16 with minecraft:diamond_shovel{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_shovel","italic":false}]'}, tag: {id: "dreamland:dream_org_shovel", type: 7b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.17 with minecraft:diamond_hoe{CustomModelData: 120001, display: {Name: '[{"translate":"dream.item.name.dream_org_hoe","italic":false}]'}, tag: {id: "dreamland:dream_org_hoe", type: 8b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.18 with minecraft:iron_helmet{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_helmet","italic":false}]'}, tag: {id: "dreamland:illusory_helmet", type: 1b, infusion: 0b, defaultarmor: 3,isTemp: 0b}, AttributeModifiers: [{Slot: "head", AttributeName: "generic.armor", Name: "generic.armor", Amount: 3, Operation: 0, UUID: [I; 14958484, 1076729488, 189845405, 1256454]}, {Slot: "head", AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.005d, Operation: 0, UUID: [I; 14958484, 1022549488, 48440878, 1256454]}]}
item replace entity @s container.19 with minecraft:iron_chestplate{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_chestplate","italic":false}]'}, tag: {id: "dreamland:illusory_chestplate", type: 2b, infusion: 0b, defaultarmor: 6,isTemp: 0b}, AttributeModifiers: [{Slot: "chest", AttributeName: "generic.armor", Name: "generic.armor", Amount: 6, Operation: 0, UUID: [I; 874818, 1076729488, 189845405, 1256454]}, {Slot: "chest", AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.005d, Operation: 0, UUID: [I; 14958484, 6005898, 24480, 1256454]}]}
item replace entity @s container.20 with minecraft:iron_leggings{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_leggings","italic":false}]'}, tag: {id: "dreamland:illusory_leggings", type: 3b, infusion: 0b, defaultarmor: 5,isTemp: 0b}, AttributeModifiers: [{Slot: "legs", AttributeName: "generic.armor", Name: "generic.armor", Amount: 5, Operation: 0, UUID: [I; 781208, 1076729488, 18935405, 1256454]}, {Slot: "legs", AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.005d, Operation: 0, UUID: [I; 14958484, 920887, 24480, 1256454]}]}
item replace entity @s container.21 with minecraft:iron_boots{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_boots","italic":false}]'}, tag: {id: "dreamland:illusory_boots", type: 4b, infusion: 0b, defaultarmor: 2,isTemp: 0b}, AttributeModifiers: [{Slot: "feet", AttributeName: "generic.armor", Name: "generic.armor", Amount: 2, Operation: 0, UUID: [I; 14958484, 1076729488, 25477841, 1848484]}, {Slot: "feet", AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Amount: 0.02d, Operation: 0, UUID: [I; 68418084, 1022549488, 24480, 1256454]}]}
item replace entity @s container.22 with minecraft:diamond_sword{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_sword","italic":false}]'}, tag: {id: "dreamland:illusory_sword", type: 101b, infusion: 0b, defaultdamage: 7,isTemp: 0b}, AttributeModifiers: [{Slot: "mainhand", AttributeName: "generic.attack_damage", Name: "generic.attack_damage", Amount: 7, Operation: 0, UUID: [I; 484118484, 1027158888, 1898994005, 860320107]}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Name: "generic.attack_speed", Amount: -2, Operation: 0, UUID: [I; 508088, 25562484, 1898994005, 860320107]}]}
item replace entity @s container.23 with minecraft:iron_axe{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_axe","italic":false}]'}, tag: {id: "dreamland:illusory_axe", type: 5b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.24 with minecraft:diamond_pickaxe{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_pickaxe","italic":false}]'}, tag: {id: "dreamland:illusory_pickaxe", type: 6b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.25 with minecraft:diamond_shovel{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_shovel","italic":false}]'}, tag: {id: "dreamland:illusory_shovel", type: 7b, infusion: 0b,isTemp: 0b}}
item replace entity @s container.26 with minecraft:diamond_hoe{CustomModelData: 120002, display: {Name: '[{"translate":"dream.item.name.illusory_hoe","italic":false}]'}, tag: {id: "dreamland:illusory_hoe", type: 8b, infusion: 0b,isTemp: 0b}}