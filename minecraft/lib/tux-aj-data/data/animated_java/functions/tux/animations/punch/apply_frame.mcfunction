execute if entity @s[tag=aj.tux.root] run function animated_java:tux/zzzzzzzz/animations/punch/apply_frame_as_root
execute if entity @s[tag=!aj.tux.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:tux/animations/punch/apply_frame ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]