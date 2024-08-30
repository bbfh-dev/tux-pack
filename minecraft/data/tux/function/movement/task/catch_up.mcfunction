function tux:movement/task/_goto_player

attribute @s generic.movement_speed modifier add goto 1.5 add_value
scoreboard players set @s tux.movement_task 2
scoreboard players set @s tux.movement_cooldown 0

execute at @s run function tux:speech/say {key: "catch_up"}
