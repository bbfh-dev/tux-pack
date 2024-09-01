execute store result score @s penguin.idea_timer run random value 160..2800
execute store result score idea tux.tmp run random value 1..10

execute if score HAS_SHITTALKED tux.vars matches 1 run return run function tux:penguin/idea/whisper
execute if score idea tux.tmp matches 1 run return run function tux:penguin/idea/shit_talk
execute if score idea tux.tmp matches 2..6 run return run function tux:penguin/idea/surrounding_specific
execute if score idea tux.tmp matches 7 as @n[type=item_display,tag=--this.rig] at @s run return run function animated_java:tux/animations/sneeze/play

function tux:penguin/speech/say {key: "random"}
