# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[tag=aj.tux.root] run return 0
execute unless score @s aj.is_rig_loaded matches 1 run function #animated_java:global/root/on_load
function #animated_java:tux/as_root/pre_tick
execute if entity @s[tag=aj.tux.animation.animation_model_idle.playing] run function animated_java:tux/animations/animation_model_idle/zzz/on_tick
execute if entity @s[tag=aj.tux.animation.animation_model_walk.playing] run function animated_java:tux/animations/animation_model_walk/zzz/on_tick
execute if entity @s[tag=aj.tux.animation.animation_model_run.playing] run function animated_java:tux/animations/animation_model_run/zzz/on_tick
execute if entity @s[tag=aj.tux.animation.animation_model_attack_combo.playing] run function animated_java:tux/animations/animation_model_attack_combo/zzz/on_tick
execute on passengers if entity @s[tag=aj.tux.data] run function animated_java:tux/root/zzz/1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function tux:event/on_tick
function #animated_java:tux/as_root/post_tick