execute as @e[type=marker,tag=tux.point] if score @s entity.id = @n[type=wandering_trader] entity.id run kill @s
scoreboard players reset @s entity.id

execute unless score CANCEL tux.tmp matches 1 if score @s penguin.movement.task matches 2 run function tux:penguin/speech/say {key: "caught_up"}
scoreboard players reset CANCEL tux.tmp

scoreboard players set @s penguin.movement.task 0
attribute @s generic.movement_speed modifier remove following
attribute @s generic.movement_speed modifier remove chasing
