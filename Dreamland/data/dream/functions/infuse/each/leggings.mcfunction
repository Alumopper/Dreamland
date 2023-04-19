#可用属性：1、额外保护-0~4，2、额外保护-5~7，3、额外保护-8，4、厚实-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
scoreboard players set rand_output math_output 9
execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run data get block ~ ~ ~ Items[4].tag.dreamland.defaultarmor 10.0
execute if score rand_output math_output matches 0..49 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 1b
execute if score rand_output math_output matches 0..49 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.extraprotection","italic":false},"I"]']
execute if score rand_output math_output matches 0..49 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 0..49 run scoreboard players add older_value dream_counter 10
execute if score rand_output math_output matches 0..49 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 50..79 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 2b
execute if score rand_output math_output matches 50..79 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.extraprotection","italic":false},"II"]']
execute if score rand_output math_output matches 50..79 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 50..79 run scoreboard players add older_value dream_counter 20
execute if score rand_output math_output matches 50..79 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 80..89 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 3b
execute if score rand_output math_output matches 80..89 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.extraprotection","italic":false},"III"]']
execute if score rand_output math_output matches 80..89 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 80..89 run scoreboard players add older_value dream_counter 30
execute if score rand_output math_output matches 80..89 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 90..99 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 4b
execute if score rand_output math_output matches 90..99 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.thick","italic":false}']
execute if score rand_output math_output matches 90..99 if block ~ ~ ~ barrel{Items:[{tag:{dreamland:{infusion:4b}}}]} run data modify block ~ ~ ~ Items[4].tag.AttributeModifiers append value {Amount:4b,AttributeName:"generic.max_health",Operation:0,UUID:[I;223232,4325443,70054044,323],Slot:"legs"}
function dream:infuse/infuse3