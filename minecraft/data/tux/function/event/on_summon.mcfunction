execute store result score @s tux.id run scoreboard players add latest tux.id 1
scoreboard players operation @s tux.player_id = @p tux.player_id
execute summon wandering_trader run function tux:movement/summon

execute unless score DEBUG tux.vars matches 1 run return 0
tag @s add --this.tux
execute summon text_display run function debug:tux_info/summon
tag @s remove --this.tux
