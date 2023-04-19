#可用属性：保护
#获取属性，储存在 math_output 下的 rand_output 中
function math:rand/rand
execute if score rand_output math_output matches 0..99 run data modify block ~ ~ ~ Items[4].tag.dreamland.infusion set value 1b
execute if score rand_output math_output matches 0..99 run data modify block ~ ~ ~ Items[4].tag.display.Lore set value ['{"translate":"item.dream.infuse.name.protection","italic":false}']
execute if score rand_output math_output matches 0..99 run data modify block ~ ~ ~ Items[4].tag.AttributeModifiers append value {Amount:4.5d,Slot:"chest",AttributeName:"generic.armor",Operation:0,UUID:[I;265559,26241151,1545484,2232],Name:"generic.armor"}