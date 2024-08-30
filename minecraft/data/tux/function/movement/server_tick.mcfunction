scoreboard players add @s tux.prev_update_count 1

scoreboard players operation diff tux.tmp = @s tux.prev_update_count
scoreboard players operation diff tux.tmp -= @s tux.update_count

execute if score diff tux.tmp matches ..60 run return 0

execute at @s rotated 0 0 run function animated_java:tux/summon/default
execute as @n[tag=aj.rig_root] at @s run function animated_java:tux/animations/animation_model_idle/play
kill @s
