# Called by itemflexer:display/get_lore/attributes/loop and itemflexer:display/get_lore/attributes/all_slots
# Adds the "+x <attribute name>" part of the attribute info

scoreboard players set #negative_attribute_amount ifl.dummy 0
execute if score #attribute_amount ifl.dummy matches ..-1 run scoreboard players set #negative_attribute_amount ifl.dummy 1
execute if score #negative_attribute_amount ifl.dummy matches 1 run scoreboard players operation #attribute_amount ifl.dummy *= #-1 ifl.dummy

execute if score #attribute_operation ifl.dummy matches 0 run function itemflexer:display/get_lore/attributes/calculate_decimals

execute if score #negative_attribute_amount ifl.dummy matches 0 if score #attribute_operation ifl.dummy matches -1 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.plus.0","color":"blue","with":[{"score":{"name":"#attribute_amount_whole","objective":"ifl.dummy"}},{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'
execute if score #negative_attribute_amount ifl.dummy matches 0 if score #attribute_operation ifl.dummy matches 0 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.plus.0","color":"blue","with":[[{"score":{"name":"#attribute_amount_whole","objective":"ifl.dummy"}},".",{"score":{"name":"#attribute_amount_decimal","objective":"ifl.dummy"}}],{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'
execute if score #negative_attribute_amount ifl.dummy matches 0 if score #attribute_operation ifl.dummy matches 1 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.plus.1","color":"blue","with":[{"score":{"name":"#attribute_amount","objective":"ifl.dummy"}},{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'
execute if score #negative_attribute_amount ifl.dummy matches 0 if score #attribute_operation ifl.dummy matches 2 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.plus.2","color":"blue","with":[{"score":{"name":"#attribute_amount","objective":"ifl.dummy"}},{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'

execute if score #negative_attribute_amount ifl.dummy matches 1 if score #attribute_operation ifl.dummy matches -1 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.take.0","color":"blue","with":[{"score":{"name":"#attribute_amount_whole","objective":"ifl.dummy"}},{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'
execute if score #negative_attribute_amount ifl.dummy matches 1 if score #attribute_operation ifl.dummy matches 0 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.take.0","color":"red","with":[[{"score":{"name":"#attribute_amount_whole","objective":"ifl.dummy"}},".",{"score":{"name":"#attribute_amount_decimal","objective":"ifl.dummy"}}],{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'
execute if score #negative_attribute_amount ifl.dummy matches 1 if score #attribute_operation ifl.dummy matches 1 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.take.1","color":"red","with":[{"score":{"name":"#attribute_amount","objective":"ifl.dummy"}},{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'
execute if score #negative_attribute_amount ifl.dummy matches 1 if score #attribute_operation ifl.dummy matches 2 run data modify storage ifl:storage lore_add set value '{"translate":"attribute.modifier.take.2","color":"red","with":[{"score":{"name":"#attribute_amount","objective":"ifl.dummy"}},{"nbt":"attribute_name","storage":"ifl:storage","interpret":true}]}'

function itemflexer:display/get_lore/add
