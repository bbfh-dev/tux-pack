scoreboard players add @s aj.tux.animation.dance.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tux.animation.dance.local_anim_time
function animated_java:tux/zzzzzzzz/animations/dance/apply_frame_as_root
execute if score @s aj.tux.animation.dance.local_anim_time matches 39.. run function animated_java:tux/zzzzzzzz/animations/dance/end