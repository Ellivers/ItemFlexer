############################################################
# Gets the special book lore
############################################################

execute if data storage ifl:storage item.tag.author run data modify storage ifl:storage lore_add set value '{"translate":"book.byAuthor","with":[{"nbt":"item.tag.author","storage":"ifl:storage"}],"color":"gray"}'
execute if data storage ifl:storage item.tag.author run function itemflexer:display/get_lore/add

scoreboard players reset #book_generation ifl.dummy
execute store result score #book_generation ifl.dummy run data get storage ifl:storage item.tag.generation
execute if score #book_generation ifl.dummy matches 0 run data modify storage ifl:storage lore_add set value '{"translate":"book.generation.0","color":"gray"}'
execute if score #book_generation ifl.dummy matches 1 run data modify storage ifl:storage lore_add set value '{"translate":"book.generation.1","color":"gray"}'
execute if score #book_generation ifl.dummy matches 2 run data modify storage ifl:storage lore_add set value '{"translate":"book.generation.2","color":"gray"}'
execute if score #book_generation ifl.dummy matches 3 run data modify storage ifl:storage lore_add set value '{"translate":"book.generation.3","color":"gray"}'
execute unless score #book_generation ifl.dummy matches 0..3 if score #book_generation ifl.dummy matches -2147483648.. run data modify storage ifl:storage lore_add set value '[{"translate":"book.generation.","color":"gray"},{"score":{"name":"#book_generation","objective":"ifl.dummy"}}]'
execute if score #book_generation ifl.dummy matches -2147483648.. run function itemflexer:display/get_lore/add
