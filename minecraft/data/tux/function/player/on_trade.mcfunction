execute positioned ^ ^ ^2.5 unless entity @n[type=wandering_trader,tag=tux.penguin,distance=..5] run return run scoreboard players reset @s player.traded
execute unless items entity @s inventory.* *[minecraft:custom_data~{tux_trade: 1b}] run return 0

execute if items entity @s inventory.* *[minecraft:custom_data~{tux_action:"set_variant"}] positioned ^ ^ ^2.5 run function tux:penguin/trades/perform/set_variant

scoreboard players reset @s player.traded
clear @s *[minecraft:custom_data~{tux_trade: 1b}]
