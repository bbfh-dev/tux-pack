scoreboard players add @s aj.tux.animation.idle.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tux.animation.idle.local_anim_time
function animated_java:tux/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score @s aj.tux.animation.idle.local_anim_time matches 80.. run function animated_java:tux/zzzzzzzz/animations/idle/end