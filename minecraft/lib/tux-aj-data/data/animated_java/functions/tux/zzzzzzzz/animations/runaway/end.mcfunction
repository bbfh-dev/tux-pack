execute if score @s aj.tux.animation.runaway.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:tux/zzzzzzzz/animations/runaway/end_loop
execute if score @s aj.tux.animation.runaway.loop_mode = $aj.loop_mode.once aj.i run function animated_java:tux/animations/runaway/stop
execute if score @s aj.tux.animation.runaway.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:tux/animations/runaway/pause