tag @s add --this.tux

execute store result storage minecraft:tux input.id int 1 run scoreboard players get @s tux.id
execute store result storage minecraft:tux input.player_id int 1 run scoreboard players get @s tux.player_id
function tux:entity_tick with storage minecraft:tux input

tag @s remove --this.tux
