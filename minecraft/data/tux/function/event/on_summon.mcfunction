function animated_java:tux/animations/idle/play
execute if score CANCEL_SUMMON tux.tmp matches 1 run return run scoreboard players reset CANCEL_SUMMON tux.tmp

execute store result score @s penguin.id run scoreboard players add latest penguin.id 1
scoreboard players operation @s player.id = @p player.id

execute summon wandering_trader run function tux:penguin/summon

tag @s add --this.ROOT
execute summon text_display run function tux:helper/set_label
tag @s remove --this.ROOT

execute if score DEBUG tux.vars matches 1 summon text_display run function debug:billboard/summon
