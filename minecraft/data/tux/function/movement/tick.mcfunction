scoreboard players set _movement_ticked tux.tmp 1
scoreboard players add @s tux.update_count 1
tag @s add --this.movement

tp @n[type=item_display,tag=--this.tux] ~ ~ ~ ~ 0
item replace entity @s weapon.mainhand with air

$execute unless score @s tux.movement_task matches 2 at @p[scores={tux.player_id=$(player_id)},distance=32..] run function tux:movement/task/catch_up

$execute if score @s tux.movement_task matches 0 at @p[scores={tux.player_id=$(player_id)},distance=10..] run function tux:movement/task/go_to_owner
execute if score @s tux.movement_task matches 1..2 run function tux:movement/while/going_to_owner/tick with storage minecraft:tux input

execute if predicate tux:standing_still run scoreboard players set @s tux.animation 0
execute if predicate tux:walking run scoreboard players set @s tux.animation 1
execute if predicate tux:running run scoreboard players set @s tux.animation 2
execute unless score @s tux.movement_task matches -1 unless score @s tux.prev_animation = @s tux.animation run function tux:movement/update_animation

scoreboard players remove @s tux.idea_timer 1
execute if score @s tux.idea_timer matches ..0 run function tux:idea/new

tag @s remove --this.movement
