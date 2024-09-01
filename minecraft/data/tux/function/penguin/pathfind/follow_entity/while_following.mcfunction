$execute unless predicate tux:is_riding_boat if entity @n[type=marker,scores={entity.id=$(entity_id)},distance=..2] run return run function tux:penguin/pathfind/follow_entity/finish
