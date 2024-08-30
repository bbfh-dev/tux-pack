execute if score @s aj.tux.animation.run.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:tux/zzzzzzzz/animations/run/end_loop
execute if score @s aj.tux.animation.run.loop_mode = $aj.loop_mode.once aj.i run function animated_java:tux/animations/run/stop
execute if score @s aj.tux.animation.run.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:tux/animations/run/pause