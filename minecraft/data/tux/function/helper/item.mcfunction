execute as @s[nbt=!{Item:{id:"minecraft:cod"}}] run return run tag @s add --tux.processed

execute at @s if block ~ ~-1 ~ carved_pumpkin run function tux:helper/new_tux
