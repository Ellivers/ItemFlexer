# Called by itemflexer:tick
# Do you have the rights to flex?

tellraw @s[gamemode=spectator,scores={display_item=-2147483648..}] {"translate":"You can't display items in Spectator mode.","color":"red"}
execute if entity @s[gamemode=!spectator,scores={display_item=-2147483648..},predicate=!itemflexer:holding_mainhand] run tellraw @a {"translate":"You need to hold an item in your main hand to display it.","color":"red"}
execute if entity @s[gamemode=!spectator,scores={display_item=-2147483648..},predicate=itemflexer:holding_mainhand] at @s positioned ~ ~50 ~ run function itemflexer:display/display

scoreboard players set @s display_item 0
scoreboard players enable @s display_item
