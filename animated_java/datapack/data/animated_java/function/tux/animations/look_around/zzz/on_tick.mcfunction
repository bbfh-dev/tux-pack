# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard players remove @s aj.tween_duration 1
execute if score @s aj.tween_duration matches 1.. run return 1
execute if score @s aj.tween_duration matches 0 on passengers run data modify entity @s interpolation_duration set value 1
execute store result storage aj:temp frame int 1 run scoreboard players get @s aj.look_around.frame
function animated_java:tux/animations/look_around/zzz/apply_frame with storage aj:temp
execute if score @s aj.look_around.frame matches 60 run return run function animated_java:tux/animations/look_around/stop
scoreboard players add @s aj.look_around.frame 1