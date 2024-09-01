execute unless entity @n[type=#tux:can_attack,tag=--tux.target,distance=..40] run return run function tux:penguin/attack/finish

scoreboard players remove @s penguin.attack.cooldown 1
execute if score @s penguin.attack.cooldown matches ..0 run function tux:penguin/attack/finish

execute at @n[type=#tux:can_attack,tag=--tux.target] run function tux:penguin/pathfind/follow_entity/set_wander_target

scoreboard players remove @s penguin.shoot.cooldown 1
execute if score @s penguin.shoot.cooldown matches ..0 if entity @n[type=#tux:can_attack,tag=--tux.target,distance=4..] run return run function tux:penguin/attack/snowball/shoot

execute unless score @s penguin.animation.cooldown matches 1.. if entity @n[type=#tux:can_attack,tag=--tux.target,distance=..4] run function tux:penguin/attack/combo/punch
