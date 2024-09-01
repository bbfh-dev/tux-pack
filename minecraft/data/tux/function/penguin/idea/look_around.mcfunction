execute store result score @s penguin.look_around.cooldown run random value 100..2400

execute as @n[type=item_display,tag=--this.rig] at @s run function animated_java:tux/animations/look_around/play
