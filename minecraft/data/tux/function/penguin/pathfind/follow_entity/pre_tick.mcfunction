function tux:penguin/pathfind/while_moving/tick

execute store result storage minecraft:tux input.entity_id int 1 run scoreboard players get @s entity.id
function tux:penguin/pathfind/follow_entity/while_following with storage minecraft:tux input
