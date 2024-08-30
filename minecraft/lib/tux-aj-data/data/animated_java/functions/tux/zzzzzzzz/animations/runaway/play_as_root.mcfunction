scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tux.animation.runaway.local_anim_time 0
scoreboard players set @s aj.tux.animation.runaway.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tux/zzzzzzzz/animations/runaway/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tux.animation.runaway