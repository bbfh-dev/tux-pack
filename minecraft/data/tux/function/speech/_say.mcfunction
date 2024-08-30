$tellraw @a[distance=..12] [{"text":"", "color":"white"}, {"translate":"chat.type.text", "with":[{"selector": "@s"}, {"storage":"minecraft:tux", "nbt":"speech_list[$(i)]"}]}]
$tellraw @a[distance=12.001..32] [{"text":"", "color":"gray"}, {"translate":"chat.type.text", "with":[{"selector": "@s"}, {"storage":"minecraft:tux", "nbt":"speech_list[$(i)]"}]}]
$tellraw @a[distance=32.001..] [{"text":"", "color":"dark_gray"}, {"translate":"chat.type.text", "with":[{"selector": "@s"}, {"storage":"minecraft:tux", "nbt":"speech_list[$(i)]"}]}]
playsound minecraft:entity.tux.ambient master @a ~ ~ ~ 2 1 0
