# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute unless entity @s[type=item_display,tag=aj.tux.root] run return run function animated_java:global/errors/function_not_executed_as_root_entity {'export_namespace': 'tux', 'function_path': 'animated_java:tux/animations/throw/stop'}
tag @s remove aj.tux.animation.throw.playing
scoreboard players set @s aj.throw.frame 0
tag @s add aj.transforms_only
execute at @s run function animated_java:tux/animations/throw/zzz/set_frame {frame: 0}
tag @s remove aj.transforms_only