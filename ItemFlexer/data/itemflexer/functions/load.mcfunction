# Called by #minecraft:load
# Initialization

# DHP definitions
#define storage ifl:storage

# Scoreboard objectives
scoreboard objectives add ifl.dummy dummy
scoreboard objectives add display_item trigger

# Constants
scoreboard players set #-1 ifl.dummy -1
scoreboard players set #10 ifl.dummy 10
scoreboard players set #100 ifl.dummy 100
scoreboard players set #max_lore_length ifl.dummy 16

execute unless score $advanced_tooltips.id ifl.dummy matches 0..1 run scoreboard players set $advanced_tooltips.id ifl.dummy 1
execute unless score $advanced_tooltips.nbt ifl.dummy matches 0..1 run scoreboard players set $advanced_tooltips.nbt ifl.dummy 1
