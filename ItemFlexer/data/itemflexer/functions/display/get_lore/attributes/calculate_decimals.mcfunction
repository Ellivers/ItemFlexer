############################################################
# Splits the attribute amount into several scores
############################################################

scoreboard players operation #attribute_amount_whole ifl.dummy = #attribute_amount ifl.dummy
scoreboard players operation #attribute_amount_whole ifl.dummy /= #100 ifl.dummy

scoreboard players operation #attribute_amount_10 ifl.dummy = #attribute_amount ifl.dummy
scoreboard players operation #attribute_amount_10 ifl.dummy %= #100 ifl.dummy
scoreboard players operation #attribute_amount_10 ifl.dummy /= #10 ifl.dummy
scoreboard players operation #attribute_amount_10 ifl.dummy *= #10 ifl.dummy

scoreboard players operation #attribute_amount_1 ifl.dummy = #attribute_amount ifl.dummy
scoreboard players operation #attribute_amount_1 ifl.dummy %= #100 ifl.dummy
scoreboard players operation #attribute_amount_1 ifl.dummy %= #10 ifl.dummy

scoreboard players operation #attribute_amount_decimal ifl.dummy = #attribute_amount_10 ifl.dummy
scoreboard players operation #attribute_amount_decimal ifl.dummy += #attribute_amount_1 ifl.dummy

execute if score #attribute_amount_decimal ifl.dummy matches 0 run scoreboard players set #attribute_operation ifl.dummy -1
execute if score #attribute_amount_1 ifl.dummy matches 0 run scoreboard players operation #attribute_amount_decimal ifl.dummy /= #10 ifl.dummy
