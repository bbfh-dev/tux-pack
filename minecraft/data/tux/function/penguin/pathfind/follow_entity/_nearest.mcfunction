function tux:penguin/pathfind/follow_entity/set_wander_target

execute unless score @n entity.id matches -2147483648..2147483647 store result score @n entity.id run scoreboard players add latest entity.id 1
scoreboard players operation @s entity.id = @n entity.id

execute as @e[type=marker,tag=tux.point] if score @s entity.id = @n entity.id run kill @s

summon marker ~ ~ ~ {Tags:["+tux", "tux.point", "--tux.new"]}
scoreboard players operation @n[type=marker,tag=--tux.new] entity.id = @n[type=!marker] entity.id
