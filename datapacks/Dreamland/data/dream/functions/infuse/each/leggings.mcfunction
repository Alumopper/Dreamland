#可用属性：1、额外保护-0~4，2、额外保护-5~7，3、额外保护-8，4、厚实-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run data get block ~ ~ ~ Items[4].tag.tag.defaultarmor 10.0
execute if score rand_output math_output matches 0..4 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 1b
execute if score rand_output math_output matches 0..4 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"额外保护 I","italic":false}']
execute if score rand_output math_output matches 0..4 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 0..4 run scoreboard players add older_value dream_counter 10
execute if score rand_output math_output matches 0..4 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 5..7 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 2b
execute if score rand_output math_output matches 5..7 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"额外保护 II","italic":false}']
execute if score rand_output math_output matches 5..7 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 5..7 run scoreboard players add older_value dream_counter 20
execute if score rand_output math_output matches 5..7 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 8 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 3b
execute if score rand_output math_output matches 8 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"额外保护 III","italic":false}']
execute if score rand_output math_output matches 8 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 8 run scoreboard players add older_value dream_counter 30
execute if score rand_output math_output matches 8 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 9 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 4b
execute if score rand_output math_output matches 9 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"厚实","italic":false}']
execute if score rand_output math_output matches 9 unless block ~ ~ ~ chest{Items:[{tag:{tag:{infusion:4b}}}]} run data modify block ~ ~ ~ Items[4].tag.AttributeModifiers append value {Amount:4b,AttributeName:"generic.max_health",Operation:0,UUID:[I;223232,4325443,70054044,323]}
function dream:infuse/infuse3