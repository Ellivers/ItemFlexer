# Called recursively and by itemflexer:display/get_lore/all
# Gets the item's enchantments

scoreboard players add #temp3 ifl.dummy 1

data modify storage ifl:storage enchantment set from storage ifl:storage item.tag.Enchantments[0]

scoreboard players set #enchantment_lvl ifl.dummy 0
execute store result score #enchantment_lvl ifl.dummy run data get storage ifl:storage enchantment.lvl

data remove storage ifl:storage ench_name
execute if data storage ifl:storage enchantment{id:"minecraft:sharpness"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.sharpness","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:smite"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.smite","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:bane_of_arthropods"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.bane_of_arthropods","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:knockback"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.knockback","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:fire_aspect"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.fire_aspect","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:sweeping"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.sweeping","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:protection"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.protection","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:fire_protection"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.fire_protection","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:feather_falling"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.feather_falling","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:blast_protection"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.blast_protection","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:projectile_protection"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.projectile_protection","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:respiration"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.respiration","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:aqua_affinity"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.aqua_affinity","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:depth_strider"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.depth_strider","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:frost_walker"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.frost_walker","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:soul_speed"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.soul_speed","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:efficiency"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.efficiency","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:silk_touch"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.silk_touch","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:unbreaking"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.unbreaking","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:looting"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.looting","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:fortune"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.fortune","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:luck_of_the_sea"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.luck_of_the_sea","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:lure"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.lure","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:power"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.power","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:flame"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.flame","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:punch"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.punch","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:infinity"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.infinity","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:thorns"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.thorns","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:mending"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.mending","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:binding_curse"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.binding_curse","color":"red"}'
execute if data storage ifl:storage enchantment{id:"minecraft:vanishing_curse"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.vanishing_curse","color":"red"}'
execute if data storage ifl:storage enchantment{id:"minecraft:loyalty"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.loyalty","color":"gray""}'
execute if data storage ifl:storage enchantment{id:"minecraft:impaling"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.impaling","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:riptide"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.riptide","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:channeling"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.channeling","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:multishot"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.multishot","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:quick_charge"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.quick_charge","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:piercing"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.piercing","color":"gray"}'
execute if data storage ifl:storage enchantment{id:"minecraft:swift_sneak"} run data modify storage ifl:storage ench_name set value '{"translate":"enchantment.minecraft.swift_sneak","color":"gray"}'

execute if score #enchantment_lvl ifl.dummy matches 1..10 run function itemflexer:display/get_lore/enchantments/normal_levels
execute unless score #enchantment_lvl ifl.dummy matches 1..10 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"text":"enchantment.level."},{"score":{"name":"#enchantment_lvl","objective":"ifl.dummy"}}]'

execute unless score #enchantment_lvl ifl.dummy matches 0 run function itemflexer:display/get_lore/add

data modify storage ifl:storage item.tag.Enchantments append from storage ifl:storage item.tag.Enchantments[0]
data remove storage ifl:storage item.tag.Enchantments[0]

execute unless score #current_lore_length ifl.dummy >= #max_lore_length ifl.dummy unless score #temp3 ifl.dummy >= #temp0 ifl.dummy run function itemflexer:display/get_lore/enchantments/loop
