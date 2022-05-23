# Called by itemflexer:display/get_lore/all
# Sets the NBT tag count at the bottom of the lore

scoreboard players set #temp0 ifl.dummy 0
execute store result score #temp0 ifl.dummy run data get storage ifl:storage item.tag
execute unless score #temp0 ifl.dummy matches 0 run data modify storage ifl:storage lore_add set value '{"translate":"item.nbt_tags","color":"dark_gray","with":[{"score":{"name":"#temp0","objective":"ifl.dummy"}}]}'
execute unless score #temp0 ifl.dummy matches 0 run function itemflexer:display/get_lore/add
