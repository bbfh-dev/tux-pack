kill @e[type=boat,distance=..2,tag=tux.boat]
data merge entity @s {Tags:["tux.boat"], Type:"bamboo"}
scoreboard players operation @s player.id = @n[type=wandering_trader,tag=--this.penguin] player.id
ride @n[type=wandering_trader,tag=--this.penguin] mount @s
data modify entity @n[type=item_display,tag=--this.rig] teleport_duration set value 10
tag @n[type=wandering_trader,tag=--this.penguin] add --rides-boat
