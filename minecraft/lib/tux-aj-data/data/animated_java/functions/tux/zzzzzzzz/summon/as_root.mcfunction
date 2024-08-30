execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tux.rig_loaded 1
scoreboard players operation @s aj.tux.export_version = aj.tux.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:tux/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.tux.variant.tux aj.id run function animated_java:tux/zzzzzzzz/apply_variant/tux/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tux.animation.idle aj.id run function animated_java:tux/zzzzzzzz/animations/idle/apply_frame_as_root
execute if score #animation aj.i = $aj.tux.animation.idle aj.id run scoreboard players operation @s aj.tux.animation.idle.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tux.animation.walk aj.id run function animated_java:tux/zzzzzzzz/animations/walk/apply_frame_as_root
execute if score #animation aj.i = $aj.tux.animation.walk aj.id run scoreboard players operation @s aj.tux.animation.walk.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tux.animation.run aj.id run function animated_java:tux/zzzzzzzz/animations/run/apply_frame_as_root
execute if score #animation aj.i = $aj.tux.animation.run aj.id run scoreboard players operation @s aj.tux.animation.run.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tux.animation.punch aj.id run function animated_java:tux/zzzzzzzz/animations/punch/apply_frame_as_root
execute if score #animation aj.i = $aj.tux.animation.punch aj.id run scoreboard players operation @s aj.tux.animation.punch.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tux.animation.dance aj.id run function animated_java:tux/zzzzzzzz/animations/dance/apply_frame_as_root
execute if score #animation aj.i = $aj.tux.animation.dance aj.id run scoreboard players operation @s aj.tux.animation.dance.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.tux.animation.runaway aj.id run function animated_java:tux/zzzzzzzz/animations/runaway/apply_frame_as_root
execute if score #animation aj.i = $aj.tux.animation.runaway aj.id run scoreboard players operation @s aj.tux.animation.runaway.local_anim_time = #frame aj.i
execute at @s run function #animated_java:tux/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i