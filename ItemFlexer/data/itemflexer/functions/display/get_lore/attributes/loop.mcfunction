# Called recursively and by itemflexer:display/get_lore/all
# Gets the item's attributes

scoreboard players add @s ifl.dummy2 1

data modify storage ifl:storage attribute_modifier set from storage ifl:storage item.tag.AttributeModifiers[0]

scoreboard players set #attribute_amount ifl.dummy 0
execute store result score #attribute_amount ifl.dummy run data get storage ifl:storage attribute_modifier.Amount 100
scoreboard players set #attribute_operation ifl.dummy 0
execute store result score #attribute_operation ifl.dummy run data get storage ifl:storage attribute_modifier.Operation

scoreboard players set #check_uuid ifl.dummy 0
execute store result score #check_uuid ifl.dummy run data get storage ifl:storage attribute_modifier.UUID
execute unless score #check_uuid ifl.dummy matches 4 run scoreboard players set #check_uuid ifl.dummy 0
execute if score #check_uuid ifl.dummy matches 4 store result score #check_uuid ifl.dummy run data get storage ifl:storage attribute_modifier.UUID[0]
execute unless score #check_uuid ifl.dummy matches 0 store result score #check_uuid ifl.dummy run data get storage ifl:storage attribute_modifier.UUID[1]
execute unless score #check_uuid ifl.dummy matches 0 store result score #check_uuid ifl.dummy run data get storage ifl:storage attribute_modifier.UUID[2]

execute if data storage ifl:storage attribute_modifier{Slot:"mainhand"} run data modify storage ifl:storage lore_add set value '["\\n",{"translate":"item.modifiers.mainhand","color":"gray"}]'
execute if data storage ifl:storage attribute_modifier{Slot:"offhand"} run data modify storage ifl:storage lore_add set value '["\\n",{"translate":"item.modifiers.offhand","color":"gray"}]'
execute if data storage ifl:storage attribute_modifier{Slot:"feet"} run data modify storage ifl:storage lore_add set value '["\\n",{"translate":"item.modifiers.feet","color":"gray"}]'
execute if data storage ifl:storage attribute_modifier{Slot:"legs"} run data modify storage ifl:storage lore_add set value '["\\n",{"translate":"item.modifiers.legs","color":"gray"}]'
execute if data storage ifl:storage attribute_modifier{Slot:"chest"} run data modify storage ifl:storage lore_add set value '["\\n",{"translate":"item.modifiers.chest","color":"gray"}]'
execute if data storage ifl:storage attribute_modifier{Slot:"head"} run data modify storage ifl:storage lore_add set value '["\\n",{"translate":"item.modifiers.head","color":"gray"}]'
execute if score #attribute_operation ifl.dummy matches 0..2 unless score #check_uuid ifl.dummy matches 0 if data storage ifl:storage attribute_modifier.Slot if data storage ifl:storage attribute_modifier.AttributeName run function itemflexer:display/get_lore/add

data remove storage ifl:storage attribute_name
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:horse.jump_strength"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.horse.jump_strength"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:zombie.spawn_reinforcements"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.zombie.spawn_reinforcements"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.max_health"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.max_health"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.follow_range"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.follow_range"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.knockback_resistance"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.knockback_resistance"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.movement_speed"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.movement_speed"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.flying_speed"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.flying_speed"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.attack_damage"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.attack_damage"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.attack_knockback"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.attack_knockback"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.attack_speed"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.attack_speed"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.luck"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.luck"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.armor"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.armor"}'
execute if data storage ifl:storage attribute_modifier{AttributeName:"minecraft:generic.armor_toughness"} run data modify storage ifl:storage attribute_name set value '{"translate":"attribute.name.generic.armor_toughness"}'

execute if data storage ifl:storage attribute_modifier.Slot if score #attribute_operation ifl.dummy matches 0..2 if data storage ifl:storage attribute_name unless score #check_uuid ifl.dummy matches 0 unless score #attribute_amount ifl.dummy matches 0 run function itemflexer:display/get_lore/attributes/add
execute unless data storage ifl:storage attribute_modifier.Slot if score #attribute_operation ifl.dummy matches 0..2 if data storage ifl:storage attribute_name unless score #check_uuid ifl.dummy matches 0 unless score #attribute_amount ifl.dummy matches 0 run function itemflexer:display/get_lore/attributes/all_slots

data modify storage ifl:storage item.tag.AttributeModifiers append from storage ifl:storage item.tag.AttributeModifiers[0]
data remove storage ifl:storage item.tag.AttributeModifiers[0]

execute unless score @s ifl.dummy matches 16.. unless score @s ifl.dummy2 >= #temp0 ifl.dummy run function itemflexer:display/get_lore/attributes/loop
