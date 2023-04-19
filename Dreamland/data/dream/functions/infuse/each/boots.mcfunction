#可用属性：1、额外保护-0~4，，2、额外保护 II-5~6，3、岩浆行者-7，4、飘落-8，5、弹性-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
scoreboard players set rand_output math_output 9
#重置装甲值
execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run data get block ~ ~ ~ Items[4].tag.dreamland.defaultarmor 10.0
execute if score rand_output math_output matches 0..49 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 1b
execute if score rand_output math_output matches 0..49 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.extraprotection","italic":false},"I"]']
execute if score rand_output math_output matches 0..49 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 0..49 run scoreboard players add older_value dream_counter 10
execute if score rand_output math_output matches 0..49 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 50..69 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 2b
execute if score rand_output math_output matches 50..69 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.extraprotection","italic":false},"II"]']
execute if score rand_output math_output matches 50..69 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 50..69 run scoreboard players add older_value dream_counter 20
execute if score rand_output math_output matches 50..69 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 70..79 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 3b
execute if score rand_output math_output matches 70..79 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.lava_walker","italic":false}']
execute if score rand_output math_output matches 80..89 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 4b
execute if score rand_output math_output matches 80..89 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.snow_falling","italic":false}']
execute if score rand_output math_output matches 90..99 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 5b
execute if score rand_output math_output matches 90..99 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.elastic","italic":false}']
function dream:infuse/infuse3