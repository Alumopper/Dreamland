#可用属性1、增速0~1，2、剧毒2~3，3、节能I4~7，4、节能II8~9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute if score rand_output math_output matches 0..1 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 1b
execute if score rand_output math_output matches 0..1 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"增速","italic":false}']
execute if score rand_output math_output matches 2..3 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 2b
execute if score rand_output math_output matches 2..3 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"剧毒","italic":false}']
execute if score rand_output math_output matches 4..7 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 3b
execute if score rand_output math_output matches 4..7 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"节能 I","italic":false}']
execute if score rand_output math_output matches 8..9 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 4b
execute if score rand_output math_output matches 8..9 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"text":"节能 II","italic":false}']
function dream:infuse/infuse3