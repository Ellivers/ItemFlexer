# Called by #minecraft:tick
# Tickly commands

execute as @a unless score @s display_item matches 0 run function itemflexer:display/load
