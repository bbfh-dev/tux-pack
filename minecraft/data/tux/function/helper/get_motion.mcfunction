scoreboard players set x.begin tux.tmp 0
scoreboard players set z.begin tux.tmp 0

tp @s ^ ^ ^1

execute store result score x.end tux.tmp run data get entity @s Pos[0] 100
execute store result score z.end tux.tmp run data get entity @s Pos[2] 100

tp @s ^ ^ ^-1

scoreboard players operation x.end tux.tmp -= x.begin tux.tmp
scoreboard players operation z.end tux.tmp -= z.begin tux.tmp
