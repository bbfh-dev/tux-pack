$execute as @n[type=item_display,tag=aj.rig_root] at @s run function animated_java:tux/variants/$(id)/apply
$data modify entity @n[type=wandering_trader,tag=tux.penguin] CustomName set value '"$(name)"'
$scoreboard players set @n[type=wandering_trader,tag=tux.penguin] penguin.type $(type)
execute as @n[type=text_display,tag=tux.label] at @s run data modify entity @s text set from entity @n[type=wandering_trader,tag=tux.penguin] CustomName
