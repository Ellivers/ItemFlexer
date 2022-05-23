# Called by itemflexer:display/display
# Gets the item's default name

scoreboard players set @s ifl.dummy 1

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:glass_pane",Count:1b},NoGravity:1b,Tags:["ifl","ifl.temp_item","global.ignore"],PickupDelay:32767s,Age:6000s}
data modify entity @e[type=minecraft:item,tag=ifl.temp_item,sort=nearest,limit=1] Item set from storage ifl:storage item
data modify storage ifl:storage name0 set value '{"selector":"@e[type=minecraft:item,tag=ifl.temp_item,sort=nearest,limit=1]"}'
