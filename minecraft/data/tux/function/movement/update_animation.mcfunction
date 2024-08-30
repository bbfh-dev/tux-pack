execute if score @s tux.prev_animation matches 0 as @n[type=item_display,tag=--this.tux] run function animated_java:tux/animations/animation_model_idle/stop
execute if score @s tux.prev_animation matches 1 as @n[type=item_display,tag=--this.tux] run function animated_java:tux/animations/animation_model_walk/stop
execute if score @s tux.prev_animation matches 2 as @n[type=item_display,tag=--this.tux] run function animated_java:tux/animations/animation_model_run/stop
scoreboard players operation @s tux.prev_animation = @s tux.animation

execute if score @s tux.animation matches 0 as @n[type=item_display,tag=--this.tux] run return run function animated_java:tux/animations/animation_model_idle/play
execute if score @s tux.animation matches 1 as @n[type=item_display,tag=--this.tux] run return run function animated_java:tux/animations/animation_model_walk/play
execute if score @s tux.animation matches 2 as @n[type=item_display,tag=--this.tux] run return run function animated_java:tux/animations/animation_model_run/play
