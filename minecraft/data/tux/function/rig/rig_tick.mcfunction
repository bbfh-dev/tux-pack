scoreboard players set _movement_ticked tux.tmp 0
$execute as @e[type=wandering_trader,tag=tux.penguin,scores={penguin.id=$(id)},distance=0..] at @s run function tux:penguin/penguin_tick with storage minecraft:tux penguin
execute if score _movement_ticked tux.tmp matches 0 run function animated_java:tux/remove/this
