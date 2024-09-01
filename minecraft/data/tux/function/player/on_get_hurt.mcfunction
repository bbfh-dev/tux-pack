advancement revoke @s only tux:on_get_hurt

execute as @e[type=wandering_trader,tag=tux.penguin,distance=..20] at @n[type=#tux:can_attack,type=!player,distance=..12] run function tux:penguin/attack/attack_nearest
execute as @n[type=wandering_trader,tag=tux.penguin,distance=..20] run function tux:penguin/speech/say {key: "hurt_mad"}
