scoreboard players reset @s penguin.stare_timer
$data modify storage minecraft:tux speech_list set from storage minecraft:tux speech.$(key)

$data modify storage minecraft:tux speech_input set value {key: "$(key)"}
function tux:penguin/speech/find_extension with storage minecraft:tux speech_input

execute store result score length tux.tmp run data get storage minecraft:tux speech_extension
function tux:penguin/speech/extend

execute store result storage minecraft:tux speech_input.length int 1 run data get storage minecraft:tux speech_list
function tux:penguin/speech/get_random with storage minecraft:tux speech_input

execute store result storage minecraft:tux speech_input.i int 1 run scoreboard players get value tux.tmp

execute if score WHISPER tux.tmp matches 1 at @s run return run function tux:penguin/speech/_whisper with storage minecraft:tux speech_input
execute at @s run function tux:penguin/speech/_say with storage minecraft:tux speech_input
