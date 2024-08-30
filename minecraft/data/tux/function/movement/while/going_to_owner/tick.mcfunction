$execute as @e[type=marker,tag=tux.target,scores={tux.id=$(id)},distance=..2] run return run function tux:movement/while/going_to_owner/reach_destination with storage minecraft:tux input

$execute if score @s tux.movement_cooldown matches 30.. as @e[type=marker,tag=tux.target,scores={tux.id=$(id)}] run return run function tux:movement/while/going_to_owner/reach_destination with storage minecraft:tux input

execute if predicate tux:standing_still run return run scoreboard players add @s tux.movement_cooldown 1
scoreboard players set @s tux.movement_cooldown 0
