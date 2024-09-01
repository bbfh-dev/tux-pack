execute as @a at @s run function tux:player/player_tick
execute as @e[type=marker,tag=tux.point] at @s run function tux:point/pre_tick

execute as @e[type=marker,tag=tux.snowball] unless predicate tux:is_riding_snowball at @s run function tux:penguin/attack/snowball/_land
execute as @e[type=boat,tag=tux.boat] at @s run function tux:penguin/pathfind/while_moving/boat/tick
execute as @e[type=item,tag=!--tux.processed] run function tux:helper/item
execute as @e[type=wandering_trader,tag=--tux.IS_LOST] at @s run function tux:penguin/respawn

tag @e[type=wandering_trader,tag=tux.penguin] add --tux.IS_LOST
