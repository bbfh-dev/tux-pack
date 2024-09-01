scoreboard players remove @s penguin.animation.cooldown 1

execute if block ~ ~ ~ water unless predicate tux:standing_still run return 3
execute if predicate tux:walking run return 1
execute if predicate tux:running run return 2
return 0
