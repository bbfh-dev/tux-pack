scoreboard players set CANCEL_SUMMON tux.tmp 1
function animated_java:tux/summon/default

tag @n[type=item_display,tag=aj.rig_root] add --this.ROOT
execute summon text_display run function tux:helper/set_label
tag @n[type=item_display,tag=aj.rig_root] remove --this.ROOT

scoreboard players operation @n[type=item_display,tag=aj.rig_root] penguin.id = @s penguin.id
scoreboard players operation @n[type=item_display,tag=aj.rig_root] player.id = @s player.id

execute unless score @s penguin.type matches 1..5 as @n[type=text_display,tag=tux.label] at @s run data modify entity @s text set from entity @n[type=wandering_trader,tag=tux.penguin] CustomName
execute if score @s penguin.type matches 1 run return run function tux:penguin/trades/perform/_set_variant {id: "arch", name: "Arch", type: 1}
execute if score @s penguin.type matches 2 run return run function tux:penguin/trades/perform/_set_variant {id: "gentoo", name: "Gentoo", type: 2}
execute if score @s penguin.type matches 3 run return run function tux:penguin/trades/perform/_set_variant {id: "mint", name: "Mint", type: 3}
execute if score @s penguin.type matches 4 run return run function tux:penguin/trades/perform/_set_variant {id: "ubuntu", name: "Ubuntu", type: 4}
execute if score @s penguin.type matches 5 run return run function tux:penguin/trades/perform/_set_variant {id: "void", name: "Void", type: 5}
