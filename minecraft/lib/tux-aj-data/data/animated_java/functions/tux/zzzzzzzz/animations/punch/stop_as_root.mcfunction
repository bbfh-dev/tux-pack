scoreboard players set @s aj.tux.animation.punch.local_anim_time 0
tag @s remove aj.tux.animation.punch
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tux.disable_command_keyframes
function animated_java:tux/zzzzzzzz/animations/punch/tree/leaf_0
tag @s remove aj.tux.disable_command_keyframes