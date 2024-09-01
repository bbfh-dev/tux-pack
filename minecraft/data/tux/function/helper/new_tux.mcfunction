kill @s
setblock ~ ~-1 ~ air

execute positioned ~ ~3 ~ rotated 0 0 run function animated_java:tux/summon/default
tellraw @p {"text":"\nYou just got a new Tux!\n\nRight click on the Tux to rename.", "color":"yellow"}
give @p snowball 2
