execute as @n[type=wandering_trader,tag=tux.penguin] at @s run function tux:penguin/trades/normal
# tellraw @p {"text":"From now on, you can right-click on any tux to talk to them!", "color":"yellow"}

execute if items entity @s inventory.* *[minecraft:custom_data~{tux_value: 0}] run return run function tux:penguin/trades/perform/_rename
execute if items entity @s inventory.* *[minecraft:custom_data~{tux_value: 1}] run return run function tux:penguin/trades/perform/_set_variant {id: "arch", name: "Arch", type: 1}
execute if items entity @s inventory.* *[minecraft:custom_data~{tux_value: 2}] run return run function tux:penguin/trades/perform/_set_variant {id: "gentoo", name: "Gentoo", type: 2}
execute if items entity @s inventory.* *[minecraft:custom_data~{tux_value: 3}] run return run function tux:penguin/trades/perform/_set_variant {id: "mint", name: "Mint", type: 3}
execute if items entity @s inventory.* *[minecraft:custom_data~{tux_value: 4}] run return run function tux:penguin/trades/perform/_set_variant {id: "ubuntu", name: "Ubuntu", type: 4}
execute if items entity @s inventory.* *[minecraft:custom_data~{tux_value: 5}] run return run function tux:penguin/trades/perform/_set_variant {id: "void", name: "Void", type: 5}
