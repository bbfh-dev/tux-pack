tag @s add --this.rig

execute store result storage minecraft:tux penguin.id int 1 run scoreboard players get @s penguin.id
execute store result storage minecraft:tux penguin.player_id int 1 run scoreboard players get @s player.id
function tux:rig/rig_tick with storage minecraft:tux penguin

tag @s remove --this.rig
