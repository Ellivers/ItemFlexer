############################################################
# Gets the item's custom lore
############################################################

scoreboard players add @s ifl.dummy2 1

data modify storage ifl:storage lore_add set from storage ifl:storage item.tag.display.Lore[0]
function itemflexer:display/get_lore/add
data modify storage ifl:storage item.tag.display.Lore append from storage ifl:storage item.tag.display.Lore[0]
data remove storage ifl:storage item.tag.display.Lore[0]

execute unless score @s ifl.dummy matches 16.. unless score @s ifl.dummy2 >= #temp0 ifl.dummy run function itemflexer:display/get_lore/loop
