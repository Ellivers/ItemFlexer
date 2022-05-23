# Called by itemflexer:display/get_lore/all
# Sets the little ID-text at the bottom of the lore

data modify storage ifl:storage lore_add set value '{"nbt":"SelectedItem.id","entity":"@s","color":"dark_gray"}'
function itemflexer:display/get_lore/add
