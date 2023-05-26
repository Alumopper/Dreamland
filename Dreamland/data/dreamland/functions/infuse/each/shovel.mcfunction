#可用属性：1、效率0~4，2、效率II-5~6，3、效率iii-7，4、轻盈-8，5、富集-9
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute if score rand_output math_output matches 0..49 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 1b
execute if score rand_output math_output matches 0..49 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dreamland.infuse.name.efficiency","italic":false},"I"]']
execute if score rand_output math_output matches 50..69 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 2b
execute if score rand_output math_output matches 50..69 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dreamland.infuse.name.efficiency","italic":false},"II"]']
execute if score rand_output math_output matches 70..79 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 3b
execute if score rand_output math_output matches 70..79 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dreamland.infuse.name.efficiency","italic":false},"III"]']
execute if score rand_output math_output matches 80..89 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 4b
execute if score rand_output math_output matches 80..89 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['[{"translate":"item.dreamland.infuse.name.snow_falling","italic":false}]']
execute if score rand_output math_output matches 90..99 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 5b
execute if score rand_output math_output matches 90..99 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dreamland.infuse.name.enrich","italic":false}']
function dreamland:infuse/infuse3