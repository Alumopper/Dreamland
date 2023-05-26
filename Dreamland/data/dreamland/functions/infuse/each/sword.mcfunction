#可用属性：1.原力吸血-0，2.格挡-1~3，3.更锋利-4~8，4、更锋利II-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
#重置攻击伤害
execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run data get block ~ ~ ~ Items[4].tag.dreamland.defaultdamage 10.0
execute if score rand_output math_output matches 0..9 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 1b
execute if score rand_output math_output matches 0..9 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.sucking_blood","italic":false}']
execute if score rand_output math_output matches 10..29 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 2b
execute if score rand_output math_output matches 10..29 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.block","italic":false}']
execute if score rand_output math_output matches 30..79 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 3b
execute if score rand_output math_output matches 30..79 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.sharper","italic":false}," I"]']
execute if score rand_output math_output matches 30..79 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 30..79 run scoreboard players add older_value dream_counter 20
execute if score rand_output math_output matches 30..79 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
execute if score rand_output math_output matches 80..99 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 4b
execute if score rand_output math_output matches 80..99 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.sharper","italic":false}," II"]']
execute if score rand_output math_output matches 80..99 run execute store result score older_value dream_counter run data get block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount 10
execute if score rand_output math_output matches 80..99 run scoreboard players add older_value dream_counter 30
execute if score rand_output math_output matches 80..99 run execute store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount float 0.1 run scoreboard players get older_value dream_counter
function dreamland:infuse/infuse3