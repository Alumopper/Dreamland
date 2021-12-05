#可用属性：1、效率III-0，2、效率-1~4，3、效率II-5~6，4、轻盈-7，5、自动冶炼-8，6、镐击-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute if score rand_output math_output matches 0 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 3b
execute if score rand_output math_output matches 0 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.efficiency","italic":false},"III"]']
execute if score rand_output math_output matches 1..4 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 1b
execute if score rand_output math_output matches 1..4 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.efficiency","italic":false},"I"]']
execute if score rand_output math_output matches 5..6 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 2b
execute if score rand_output math_output matches 5..6 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.efficiency","italic":false},"II"]']
execute if score rand_output math_output matches 7 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 4b
execute if score rand_output math_output matches 7 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"dream.item.infuse.name.snow_falling","italic":false}]']
execute if score rand_output math_output matches 8 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 5b
execute if score rand_output math_output matches 8 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"dream.item.infuse.name.auto_smelt","italic":false}']
execute if score rand_output math_output matches 9 run data modify block ~ ~ ~ Items[4].tag.tag.infusion set value 6b
execute if score rand_output math_output matches 9 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"dream.item.infuse.name.strike","italic":false}']
function dream:infuse/infuse3