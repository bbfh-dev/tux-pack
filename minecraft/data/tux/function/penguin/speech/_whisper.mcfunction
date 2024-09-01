scoreboard players reset WHISPER tux.tmp

$tellraw @a[distance=..64] {"translate":"commands.message.display.incoming", "with":[{"selector": "@s"}, {"storage":"minecraft:tux", "nbt":"speech_list[$(i)]"}], "color":"gray", "italic":true}
playsound minecraft:entity.tux.ambient master @a ~ ~ ~ 2 0.5 0
