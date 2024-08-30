particle dust{color:[1,1,1],scale:1} ~ ~.5 ~ 0.1 0.1 0.1 0 1
execute at @n[type=marker,tag=tux.target] run particle dust{color:[1,0,0],scale:1} ~ ~.5 ~ 0.1 0.1 0.1 0 1

execute if entity @n[type=marker,tag=tux.target,distance=..1] run return 0

scoreboard players remove limit tux.tmp 1
execute if score limit tux.tmp matches 1.. positioned ^ ^ ^.5 run function debug:tux_info/draw_destination/loop
