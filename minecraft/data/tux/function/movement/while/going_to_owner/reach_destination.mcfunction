execute if score @n[type=wandering_trader,tag=--this.movement] tux.movement_task matches 2 at @s run function tux:speech/say {key: "cought_up"}

scoreboard players set @n[type=wandering_trader,tag=--this.movement] tux.movement_task 0
attribute @n[type=wandering_trader,tag=--this.movement] generic.movement_speed modifier remove goto
$kill @e[type=marker,tag=tux.target,scores={tux.id=$(id)}]
