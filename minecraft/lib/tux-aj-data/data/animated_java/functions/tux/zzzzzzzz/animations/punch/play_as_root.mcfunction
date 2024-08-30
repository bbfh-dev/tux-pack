scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tux.animation.punch.local_anim_time 0
scoreboard players set @s aj.tux.animation.punch.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tux/zzzzzzzz/animations/punch/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tux.animation.punch