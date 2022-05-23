############################################################
# Commands for levels 1-10
############################################################

execute if score #enchantment_lvl ifl.dummy matches 1 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.1"}]'
execute if score #enchantment_lvl ifl.dummy matches 1 as @e[type=minecraft:armor_stand,tag=tcc.temp_item_holder,sort=nearest,limit=1] if predicate itemflexer:single_lvl_enchantment run data modify storage ifl:storage lore_add set value '{"nbt":"ench_name","storage":"ifl:storage","interpret":true}'
execute if score #enchantment_lvl ifl.dummy matches 2 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.2"}]'
execute if score #enchantment_lvl ifl.dummy matches 3 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.3"}]'
execute if score #enchantment_lvl ifl.dummy matches 4 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.4"}]'
execute if score #enchantment_lvl ifl.dummy matches 5 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.5"}]'
execute if score #enchantment_lvl ifl.dummy matches 6 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.6"}]'
execute if score #enchantment_lvl ifl.dummy matches 7 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.7"}]'
execute if score #enchantment_lvl ifl.dummy matches 8 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.8"}]'
execute if score #enchantment_lvl ifl.dummy matches 9 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.9"}]'
execute if score #enchantment_lvl ifl.dummy matches 10 run data modify storage ifl:storage lore_add set value '[{"nbt":"ench_name","storage":"ifl:storage","interpret":true}," ",{"translate":"enchantment.level.10"}]'
