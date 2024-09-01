scoreboard players set _movement_ticked tux.tmp 1
tag @s remove --tux.IS_LOST
tag @s add --this.penguin

#region Setup
$tag @p[scores={player.id=$(player_id)}] add --this.owner
#endregion

execute unless entity @p[tag=--this.owner,distance=0..] run effect give @s slowness 1 20 true

#region Visual
tp @n[type=item_display,tag=--this.rig] ~ ~ ~ ~ 0
item replace entity @s weapon.mainhand with air

execute store result score @s penguin.animation run function tux:penguin/animation/get_animation
execute if score @s penguin.animation.cooldown matches ..0 unless score @s penguin.animation.prev = @s penguin.animation run function tux:penguin/animation/update
#endregion

#region Pathfinding
execute unless score @s penguin.movement.task matches 2 at @p[tag=--this.owner,distance=32..] run function tux:penguin/pathfind/catch_up/run
execute if score @s penguin.movement.task matches 0 at @p[tag=--this.owner,distance=10..] run function tux:penguin/pathfind/follow_entity/nearest
execute if score @s penguin.movement.task matches 1..2 run function tux:penguin/pathfind/follow_entity/pre_tick

execute as @s[tag=--rides-boat] unless predicate tux:is_riding_boat run function tux:penguin/pathfind/while_moving/boat/leave
execute if score @s penguin.movement.task matches 2 unless predicate tux:is_riding_boat if block ~ ~ ~ water unless block ~ ~1 ~ water summon boat run function tux:penguin/pathfind/while_moving/boat/spawn

execute if score @s penguin.movement.task matches 3 run function tux:penguin/attack/tick
#endregion

#region Ideas
scoreboard players remove @s penguin.idea_timer 1
execute if score @s penguin.idea_timer matches ..0 run function tux:penguin/idea/new
#endregion

#region Look around
scoreboard players remove @s penguin.look_around.cooldown 1
execute if score @s penguin.look_around.cooldown matches ..0 run function tux:penguin/idea/look_around
#endregion

#region Mood
execute if score @s penguin.movement.task matches 0..2 if entity @p[tag=--this.owner,distance=..8] run scoreboard players add @s penguin.mood 1
execute if score @s penguin.mood matches 2000.. run scoreboard players set @s penguin.mood 2000
#endregion

scoreboard players remove @s penguin.stare_timer 1

#region Reset
tag @a remove --this.owner
tag @s remove --this.penguin
#endregion
