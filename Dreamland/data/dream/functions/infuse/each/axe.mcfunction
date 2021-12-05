#可用属性：3、效率III-0，1、效率-1~5，2、效率II-6~8，4、轻盈-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute if score rand_output math_output matches 0 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 3b
execute if score rand_output math_output matches 0 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.efficiency","italic":false},"III"]']
execute if score rand_output math_output matches 1..5 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 1b
execute if score rand_output math_output matches 1..5 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.efficiency","italic":false},"I"]']
execute if score rand_output math_output matches 6..8 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 2b
execute if score rand_output math_output matches 6..8 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.efficiency","italic":false},"II"]']
execute if score rand_output math_output matches 9 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 4b
execute if score rand_output math_output matches 9 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.snow_falling","italic":false}]']
function dream:infuse/infuse3