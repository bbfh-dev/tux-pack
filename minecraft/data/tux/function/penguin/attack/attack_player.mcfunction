function tux:penguin/pathfind/follow_entity/finish
tag @p add --tux.target

scoreboard players set @s penguin.movement.task 3
scoreboard players set @s penguin.movement.cooldown 0
attribute @s generic.movement_speed modifier add attacking 0.6 add_value

scoreboard players set @s penguin.attack.cooldown 600
