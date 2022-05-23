# Called by itemflexer:display/display
# Gets the rarity (color) of the item's name

execute if predicate itemflexer:rarity/uncommon run data modify storage ifl:storage name1 set value '{"nbt":"name0","storage":"ifl:storage","interpret":true,"color":"yellow"}'
execute if predicate itemflexer:rarity/rare run data modify storage ifl:storage name1 set value '{"nbt":"name0","storage":"ifl:storage","interpret":true,"color":"aqua"}'
execute if predicate itemflexer:rarity/epic run data modify storage ifl:storage name1 set value '{"nbt":"name0","storage":"ifl:storage","interpret":true,"color":"light_purple"}'
