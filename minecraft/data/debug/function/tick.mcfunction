schedule function debug:tick 1t replace

execute at @e[type=marker,tag=tux.point] run particle dust{color:[1, 0, 0], scale:1.5} ~ ~.5 ~ 0.2 0.2 0.2 1 1
execute as @e[type=text_display,tag=tux.billboard] at @s run function debug:billboard/tick
