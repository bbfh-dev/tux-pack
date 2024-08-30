function tux:movement/task/_goto_player

attribute @s generic.movement_speed modifier add goto 0.5 add_value
scoreboard players set @s tux.movement_task 1
scoreboard players set @s tux.movement_cooldown 0
