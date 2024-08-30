scoreboard players add @s aj.tux.animation.runaway.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tux.animation.runaway.local_anim_time
function animated_java:tux/zzzzzzzz/animations/runaway/apply_frame_as_root
execute if score @s aj.tux.animation.runaway.local_anim_time matches 16.. run function animated_java:tux/zzzzzzzz/animations/runaway/end