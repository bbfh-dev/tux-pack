advancement revoke @s only tux:on_hurt_penguin

execute anchored eyes positioned ^ ^ ^2 as @n[type=wandering_trader,tag=tux.penguin] at @s run function tux:penguin/event/on_hurt
