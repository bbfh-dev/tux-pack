function tux:penguin/pathfind/follow_entity/_nearest
tag @n[type=marker,tag=--tux.new] remove --tux.new

scoreboard players set @s penguin.movement.task 1
scoreboard players set @s penguin.movement.cooldown 0
attribute @s generic.movement_speed modifier add following 0.7 add_value
