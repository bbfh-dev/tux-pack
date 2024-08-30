scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.tux.export_version dummy
scoreboard objectives add aj.tux.rig_loaded dummy
scoreboard objectives add aj.tux.animation.idle.local_anim_time dummy
scoreboard objectives add aj.tux.animation.walk.local_anim_time dummy
scoreboard objectives add aj.tux.animation.run.local_anim_time dummy
scoreboard objectives add aj.tux.animation.punch.local_anim_time dummy
scoreboard objectives add aj.tux.animation.dance.local_anim_time dummy
scoreboard objectives add aj.tux.animation.runaway.local_anim_time dummy
scoreboard objectives add aj.tux.animation.idle.loop_mode dummy
scoreboard objectives add aj.tux.animation.walk.loop_mode dummy
scoreboard objectives add aj.tux.animation.run.loop_mode dummy
scoreboard objectives add aj.tux.animation.punch.loop_mode dummy
scoreboard objectives add aj.tux.animation.dance.loop_mode dummy
scoreboard objectives add aj.tux.animation.runaway.loop_mode dummy
scoreboard players set $aj.tux.animation.idle aj.id 0
scoreboard players set $aj.tux.animation.walk aj.id 1
scoreboard players set $aj.tux.animation.run aj.id 2
scoreboard players set $aj.tux.animation.punch aj.id 3
scoreboard players set $aj.tux.animation.dance aj.id 4
scoreboard players set $aj.tux.animation.runaway aj.id 5
scoreboard players set $aj.tux.variant.tux aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.tux.export_version aj.i 181270505
scoreboard players reset * aj.tux.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.tux.root] run function animated_java:tux/zzzzzzzz/on_load