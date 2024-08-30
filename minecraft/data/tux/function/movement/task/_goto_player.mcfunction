data modify entity @s wander_target set value [I; 0, 0, 0]
data modify storage minecraft:tux fn_input set value {x: 0, y: 0, z: 0} 
execute store result entity @s wander_target[0] int 1 store result storage minecraft:tux fn_input.x int 1 run data get entity @p Pos[0]
execute store result entity @s wander_target[1] int 1 store result storage minecraft:tux fn_input.y int 1 run data get entity @p Pos[1]
execute store result entity @s wander_target[2] int 1 store result storage minecraft:tux fn_input.z int 1 run data get entity @p Pos[2]

execute as @e[type=marker,tag=tux.target] if score @s tux.id = @n[tag=--this.tux] tux.id run kill @s
execute summon marker run function tux:movement/while/going_to_owner/spawn_target with storage minecraft:tux fn_input
