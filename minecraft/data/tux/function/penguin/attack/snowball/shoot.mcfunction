execute store result score @s penguin.shoot.cooldown run random value 15..40

execute facing entity @n[type=#tux:can_attack,tag=--tux.target] feet anchored eyes positioned ^ ^ ^1 summon marker run function tux:penguin/attack/snowball/_throw
execute as @n[type=item_display,tag=--this.rig] at @s run function animated_java:tux/animations/throw/play
