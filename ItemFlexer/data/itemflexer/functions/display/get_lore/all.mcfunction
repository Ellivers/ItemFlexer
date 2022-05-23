# Called by itemflexer:display/display
# Gets all the lore

# HideFlags
scoreboard players set #temp1 ifl.dummy 0
execute store result score #temp1 ifl.dummy run data get storage ifl:storage item.tag.HideFlags

tag @s remove ifl.hideflags.other
tag @s remove ifl.hideflags.enchantments
tag @s remove ifl.hideflags.attribute_modifiers
tag @s remove ifl.hideflags.unbreakable

# Dyed armor color
execute if score #temp1 ifl.dummy matches 64.. run scoreboard players remove #temp1 ifl.dummy 64
# Other
execute if score #temp1 ifl.dummy matches 32.. run tag @s add ifl.hideflags.other
execute if score #temp1 ifl.dummy matches 32.. run scoreboard players remove #temp1 ifl.dummy 32
# Can place on
execute if score #temp1 ifl.dummy matches 16.. run scoreboard players remove #temp1 ifl.dummy 16
# Can destroy
execute if score #temp1 ifl.dummy matches 8.. run scoreboard players remove #temp1 ifl.dummy 8
# Unbreakable
execute if score #temp1 ifl.dummy matches 4.. run tag @s add ifl.hideflags.unbreakable
execute if score #temp1 ifl.dummy matches 4.. run scoreboard players remove #temp1 ifl.dummy 4
# Attribute modifiers
execute if score #temp1 ifl.dummy matches 2.. run tag @s add ifl.hideflags.attribute_modifiers
execute if score #temp1 ifl.dummy matches 2.. run scoreboard players remove #temp1 ifl.dummy 2
# Enchantments
execute if score #temp1 ifl.dummy matches 1 run tag @s add ifl.hideflags.enchantments

# Book stuff
execute unless entity @s[tag=ifl.hideflags.other] if data storage ifl:storage item{id:"minecraft:written_book"} run function itemflexer:display/get_lore/written_book

# Enchantments
execute unless entity @s[tag=ifl.hideflags.other] run data modify storage ifl:storage item.tag.Enchantments set from storage ifl:storage item.tag.StoredEnchantments
execute unless entity @s[tag=ifl.hideflags.other] run data modify entity @e[type=minecraft:armor_stand,tag=ifl.temp_item_holder,sort=nearest,limit=1] ArmorItems[0] set from storage ifl:storage item

scoreboard players set @s ifl.dummy2 0
scoreboard players set #temp0 ifl.dummy 0
execute store result score #temp0 ifl.dummy run data get storage ifl:storage item.tag.Enchantments

execute unless entity @s[tag=ifl.hideflags.enchantments] unless score #temp0 ifl.dummy matches 0 run function itemflexer:display/get_lore/enchantments/loop

execute if data storage ifl:storage item.tag.StoredEnchantments run data remove storage ifl:storage item.tag.Enchantments

# Custom lore
scoreboard players set @s ifl.dummy2 0
scoreboard players set #temp0 ifl.dummy 0
execute store result score #temp0 ifl.dummy run data get storage ifl:storage item.tag.display.Lore
execute unless score #temp0 ifl.dummy matches 0 run function itemflexer:display/get_lore/loop

# Attribute modifiers
scoreboard players set @s ifl.dummy2 0
scoreboard players set #temp0 ifl.dummy 0
execute store result score #temp0 ifl.dummy run data get storage ifl:storage item.tag.AttributeModifiers
execute unless entity @s[tag=ifl.hideflags.attribute_modifiers] unless score #temp0 ifl.dummy matches 0 run function itemflexer:display/get_lore/attributes/loop

# Ubreakable
execute if data storage ifl:storage item.tag{Unbreakable:1b} run data modify storage ifl:storage lore_add set value '{"translate":"item.unbreakable","color":"blue"}'
execute unless entity @s[tag=ifl.hideflags.unbreakable] if data storage ifl:storage item.tag{Unbreakable:1b} run function itemflexer:display/get_lore/add

# Custom item cases

scoreboard players set #show_id ifl.dummy 0
scoreboard players set #show_nbt_tags ifl.dummy 0

execute unless data storage ifl:storage item.tag.tcc unless data storage ifl:storage item.tag.ctc run scoreboard players set #show_id ifl.dummy 1
execute unless data storage ifl:storage item.tag.tcc unless data storage ifl:storage item.tag.ctc run scoreboard players set #show_nbt_tags ifl.dummy 1

function #itemflexer:custom

# TCC
execute if data storage ifl:storage item.tag.tcc run data modify storage ifl:storage lore_add set value '[{"text":"tcc:","color":"dark_gray"},{"nbt":"SelectedItem.tag.tcc.id","entity":"@s"}]'
execute if data storage ifl:storage item.tag.tcc run function itemflexer:display/get_lore/add


execute if score #show_id ifl.dummy matches 1 run function itemflexer:display/get_lore/id
execute if score #show_nbt_tags ifl.dummy matches 1 run function itemflexer:display/get_lore/nbt_count

tag @s remove ifl.hideflags.other
tag @s remove ifl.hideflags.enchantments
tag @s remove ifl.hideflags.attribute_modifiers
tag @s remove ifl.hideflags.unbreakable
