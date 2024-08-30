execute unless score @s aj.tux.rig_loaded = @s aj.tux.rig_loaded run function animated_java:tux/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:tux/zzzzzzzz/animations/tick
function #animated_java:tux/on_tick/as_root