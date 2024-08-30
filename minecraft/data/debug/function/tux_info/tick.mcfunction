tag @s add --tux.debug

execute as @e[type=wandering_trader,tag=tux.movement,distance=..8] if score @s tux.id = @n[type=text_display,tag=--tux.debug] tux.id run tag @s add --tux.debug
execute as @e[type=item_display,tag=aj.rig_root,distance=..8] if score @s tux.id = @n[type=text_display,tag=--tux.debug] tux.id run tag @s add --tux.debug
execute as @a if score @s tux.player_id = @n[type=text_display,tag=--tux.debug] tux.player_id run tag @s add --tux.debug

data modify entity @s text set value '["", {"selector":"@n[type=wandering_trader,tag=--tux.debug]", "bold":true}, "\\n", ["ID: ", {"score":{"name":"@s", "objective":"tux.id"}, "color":"green"}], ["; Player: ", {"selector":"@p[tag=--tux.debug]", "color":"green"}], "\\n", ["Movement task: ", {"score":{"name": "@n[type=wandering_trader,tag=--tux.debug]", "objective": "tux.movement_task"}, "color":"yellow"}, "; cooldown: ", {"score":{"name":"@n[type=wandering_trader,tag=--tux.debug]", "objective": "tux.movement_cooldown"}, "color":"aqua"}], "\\n", ["Animation: ", {"score":{"name": "@n[type=wandering_trader,tag=--tux.debug]", "objective": "tux.animation"}, "color": "gold"}]]'

execute store success score has_target tux.tmp run data get entity @n[type=wandering_trader,tag=--tux.debug] wander_target
execute if score has_target tux.tmp matches 1 run function debug:tux_info/draw_destination/call

tag @e remove --tux.debug
