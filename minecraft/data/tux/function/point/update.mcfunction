tp @s ~ ~ ~
$execute at @s as @n[type=wandering_trader,scores={entity.id=$(entity_id)}] run function tux:penguin/pathfind/follow_entity/set_wander_target
