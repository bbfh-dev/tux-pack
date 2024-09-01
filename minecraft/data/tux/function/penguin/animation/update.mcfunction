execute as @n[type=item_display,tag=--this.rig] run function tux:penguin/animation/reset
scoreboard players operation @s penguin.animation.prev = @s penguin.animation

execute if score @s penguin.animation matches 0 as @n[type=item_display,tag=--this.rig] run return run function animated_java:tux/animations/idle/play
execute if score @s penguin.animation matches 1 as @n[type=item_display,tag=--this.rig] run return run function animated_java:tux/animations/walk/play
execute if score @s penguin.animation matches 2 as @n[type=item_display,tag=--this.rig] run return run function animated_java:tux/animations/run/play
execute if score @s penguin.animation matches 3 as @n[type=item_display,tag=--this.rig] run return run function animated_java:tux/animations/swim/play
