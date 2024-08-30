scoreboard players set limit tux.tmp 128
execute at @s facing entity @n[type=marker,tag=tux.target] feet positioned ^ ^ ^1 run function debug:tux_info/draw_destination/loop
