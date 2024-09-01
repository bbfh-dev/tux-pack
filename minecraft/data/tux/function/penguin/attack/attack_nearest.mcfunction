function tux:penguin/pathfind/follow_entity/finish
tag @n[type=#tux:can_attack,type=!player,distance=..5] add --tux.target
team join tux @n[type=#tux:can_attack,type=!player,distance=..5]

scoreboard players set @s penguin.movement.task 3
scoreboard players set @s penguin.movement.cooldown 0
attribute @s generic.movement_speed modifier add attacking 0.6 add_value

scoreboard players set @s penguin.attack.cooldown 600
