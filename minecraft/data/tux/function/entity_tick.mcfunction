scoreboard players set _movement_ticked tux.tmp 0
$execute as @e[type=wandering_trader,tag=tux.movement,scores={tux.id=$(id)},distance=0..] at @s run function tux:movement/tick with storage minecraft:tux input
execute if score _movement_ticked tux.tmp matches 0 run function animated_java:tux/remove/this
