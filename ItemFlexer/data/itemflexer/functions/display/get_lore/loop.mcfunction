# Called recursively and by itemflexer:display/get_lore/all
# Gets the item's custom lore

scoreboard players add #temp3 ifl.dummy 1

data modify storage ifl:storage lore_add set from storage ifl:storage item.tag.display.Lore[0]
function itemflexer:display/get_lore/add
data modify storage ifl:storage item.tag.display.Lore append from storage ifl:storage item.tag.display.Lore[0]
data remove storage ifl:storage item.tag.display.Lore[0]

execute unless score #current_lore_length ifl.dummy >= #max_lore_length ifl.dummy unless score #temp3 ifl.dummy >= #temp0 ifl.dummy run function itemflexer:display/get_lore/loop
