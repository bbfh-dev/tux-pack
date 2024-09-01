execute if score @s penguin.movement.cooldown matches 30.. run function tux:penguin/pathfind/while_moving/cancel
execute if score @s penguin.movement.cooldown matches 300.. run function tux:penguin/speech/say {key: "stuck"}
execute if score @s penguin.movement.cooldown matches 300.. run effect give @s glowing 10 0 true
execute if score @s penguin.movement.cooldown matches 300.. run scoreboard players set @s penguin.movement.cooldown 0

execute if predicate tux:standing_still unless predicate tux:is_riding_boat run return run scoreboard players add @s penguin.movement.cooldown 1
scoreboard players set @s penguin.movement.cooldown 0
