execute at @a if score @s player.id = @p player.id run tag @p add --this.player

execute if score @s penguin.movement.cooldown matches 60.. run function tux:penguin/pathfind/while_moving/boat/stuck

function tux:penguin/pathfind/while_moving/boat/cooldown

execute facing entity @p[tag=--this.player] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute unless entity @n[type=marker,tag=tux.helper] run summon marker 0 0 0 {Tags:["tux.helper"]}
execute at @s run tp @n[type=marker,tag=tux.helper] 0 0 0 ~ ~
execute as @n[type=marker,tag=tux.helper] at @s run function tux:helper/get_motion

execute store result entity @s Motion[0] double 0.009 run scoreboard players operation x.end tux.tmp -= x.begin tux.tmp
execute store result entity @s Motion[2] double 0.009 run scoreboard players operation z.end tux.tmp -= z.begin tux.tmp

tag @a remove --this.player
