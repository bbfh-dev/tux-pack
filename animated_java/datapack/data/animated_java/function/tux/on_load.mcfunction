# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
scoreboard objectives add aj.idle.frame dummy
scoreboard objectives add aj.walk.frame dummy
scoreboard objectives add aj.run.frame dummy
scoreboard objectives add aj.attack_combo.frame dummy
scoreboard objectives add aj.throw.frame dummy
scoreboard objectives add aj.look_around.frame dummy
scoreboard objectives add aj.sneeze.frame dummy
scoreboard objectives add aj.swim.frame dummy
execute as @e[type=item_display,tag=aj.tux.root] unless score @s aj.is_rig_loaded matches 1 at @s run function animated_java:tux/root/on_load