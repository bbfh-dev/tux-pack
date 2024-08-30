data modify storage minecraft:tux speech_list append from storage minecraft:tux speech_extension[-1]

data remove storage minecraft:tux speech_extension[-1]
scoreboard players remove length tux.tmp 1
execute if score length tux.tmp matches 1.. run function tux:speech/extend
