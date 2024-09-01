execute store result score motion.x tux.tmp run data get entity @s Motion[0] 10
execute store result score motion.z tux.tmp run data get entity @s Motion[2] 10
execute if score motion.x tux.tmp matches 0 if score motion.z tux.tmp matches 0 run return run scoreboard players add @s penguin.movement.cooldown 1

scoreboard players set @s penguin.movement.cooldown 0
