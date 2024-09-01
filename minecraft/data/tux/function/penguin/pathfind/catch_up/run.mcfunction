scoreboard players set CANCEL tux.tmp 1
function tux:penguin/pathfind/follow_entity/finish

function tux:penguin/pathfind/follow_entity/_nearest
tag @n[type=marker,tag=--tux.new] add --follow-closely
tag @n[type=marker,tag=--tux.new] remove --tux.new

scoreboard players set @s penguin.movement.task 2
scoreboard players set @s penguin.movement.cooldown 0
attribute @s generic.movement_speed modifier add chasing 1.0 add_value

execute at @s unless block ~ ~ ~ water run function tux:penguin/speech/say {key: "catch_up"}
