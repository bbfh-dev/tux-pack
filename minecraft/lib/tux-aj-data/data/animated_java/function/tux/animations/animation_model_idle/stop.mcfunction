# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.tux.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'tux', 'function_path': 'animated_java:tux/animations/animation_model_idle/stop'}
tag @s remove aj.tux.animation.animation_model_idle.playing
scoreboard players set @s aj.animation_model_idle.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:tux/animations/animation_model_idle/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only