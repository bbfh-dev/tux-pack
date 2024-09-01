$execute as @s[tag=!--follow-closely] at @n[type=!marker,type=!wandering_trader,scores={entity.id=$(entity_id)},distance=10..] run function tux:point/update with storage minecraft:tux input
$execute as @s[tag=--follow-closely] at @n[type=!marker,type=!wandering_trader,scores={entity.id=$(entity_id)},distance=1..] run function tux:point/update with storage minecraft:tux input
