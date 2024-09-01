#region Get Motion
tp @s ~ ~ ~ ~ ~

execute store result score x.begin tux.tmp run data get entity @s Pos[0] 100
execute store result score y.begin tux.tmp run data get entity @s Pos[1] 100
execute store result score z.begin tux.tmp run data get entity @s Pos[2] 100

# You can edit the speed vector:
tp @s ^ ^ ^2

execute store result score x.end tux.tmp run data get entity @s Pos[0] 100
execute store result score y.end tux.tmp run data get entity @s Pos[1] 100
execute store result score z.end tux.tmp run data get entity @s Pos[2] 100

execute store result entity @s Motion[0] double 0.01 run scoreboard players operation x.end tux.tmp -= x.begin tux.tmp
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation y.end tux.tmp -= y.begin tux.tmp
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation z.end tux.tmp -= z.begin tux.tmp
data modify storage minecraft:tux input.motion set from entity @s Motion

kill @s
#endregion

function tux:penguin/attack/snowball/_summon with storage minecraft:tux input
