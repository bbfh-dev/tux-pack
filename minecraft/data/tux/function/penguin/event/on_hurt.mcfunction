execute store result score diff tux.tmp run random value 100..400
scoreboard players operation @s penguin.mood -= diff tux.tmp
execute if score @s penguin.mood matches ..-2000 run return run function tux:penguin/event/_chill

execute if score @s penguin.mood matches 1000.. run return run function tux:penguin/speech/say {key: "hurt_happy"}
execute if score @s penguin.mood matches -500.. run return run function tux:penguin/speech/say {key: "hurt_moody"}

function tux:penguin/speech/say {key: "hurt_mad"}
function tux:penguin/attack/attack_player
