$execute as @s[team=arch] run data modify storage minecraft:tux speech_extension set from storage minecraft:tux speech.arch.$(key)
execute store result score has_items tux.tmp run data get storage minecraft:tux speech_extension
execute if score has_items tux.tmp matches 1.. run return 0

$execute as @s[team=gentoo] run data modify storage minecraft:tux speech_extension set from storage minecraft:tux speech.gentoo.$(key)
execute store result score has_items tux.tmp run data get storage minecraft:tux speech_extension
execute if score has_items tux.tmp matches 1.. run return 0

$execute as @s[team=mint] run data modify storage minecraft:tux speech_extension set from storage minecraft:tux speech.mint.$(key)
execute store result score has_items tux.tmp run data get storage minecraft:tux speech_extension
execute if score has_items tux.tmp matches 1.. run return 0

$execute as @s[team=ubuntu] run data modify storage minecraft:tux speech_extension set from storage minecraft:tux speech.ubuntu.$(key)
execute store result score has_items tux.tmp run data get storage minecraft:tux speech_extension
execute if score has_items tux.tmp matches 1.. run return 0

data modify storage minecraft:tux speech_extension set value []
