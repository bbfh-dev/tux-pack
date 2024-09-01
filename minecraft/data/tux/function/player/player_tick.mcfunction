execute unless score @s player.id matches -2147483648..2147483647 store result score @s player.id run scoreboard players add latest player.id 1

execute if score @s player.traded matches 1.. run return run function tux:player/on_trade

execute if items entity @s inventory.* *[minecraft:custom_data~{tux_trade: 1b}] run function tux:player/on_trade
