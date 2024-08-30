data modify entity @s Tags set value ["+tux", "tux.target"]
scoreboard players operation @s tux.id = @n[tag=--this.tux] tux.id
$tp @s $(x) $(y) $(z)
