#可用属性1、增速0~1，2、剧毒2~3，3、节能I4~7，4、节能II8~9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute if score rand_output math_output matches 0..19 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 1b
execute if score rand_output math_output matches 0..19 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.speedup","italic":false}']
execute if score rand_output math_output matches 20..30 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 2b
execute if score rand_output math_output matches 20..30 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.poison","italic":false}']
execute if score rand_output math_output matches 31..70 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 3b
execute if score rand_output math_output matches 31..70 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.energy_saving","italic":false},"I"]']
execute if score rand_output math_output matches 71..99 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 4b
execute if score rand_output math_output matches 71..99 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dream.infuse.name.energy_saving","italic":false},"II"]']
#法杖的宝石文本
execute store result score dream_i.w.insert_cytnum dream_counter run data get block ~ ~ ~ Items[4].tag.dreamland.WandEx[0][0]
function dream:infuse/lore_set
execute store result score dream_i.w.insert_cytnum dream_counter run data get block ~ ~ ~ Items[4].tag.dreamland.WandEx[1][0]
function dream:infuse/lore_set
#第三步
function dream:infuse/infuse3