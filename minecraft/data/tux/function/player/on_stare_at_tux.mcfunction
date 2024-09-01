advancement revoke @s only tux:on_staring

execute positioned ^ ^ ^2.5 run scoreboard players add @n[type=wandering_trader,tag=tux.penguin] penguin.stare_timer 50
execute positioned ^ ^ ^2.5 if score @n[type=wandering_trader,tag=tux.penguin] penguin.stare_timer matches 70.. as @n[type=wandering_trader,tag=tux.penguin] run function tux:penguin/speech/say {key: "contest"}
