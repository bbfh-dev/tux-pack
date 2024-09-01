execute as @e[type=wandering_trader,tag=tux.penguin] if score @s penguin.id = @n penguin.id run tag @s add --DEBUG
execute as @a if score @s player.id = @p player.id run tag @s add --DEBUG

data modify entity @s text set value '["", [" ", {"selector":"@n[type=wandering_trader,tag=--DEBUG]", "bold":true}, " (#", {"score":{"name": "@s", "objective": "penguin.id"}, "color":"gray"}, ") ", {"nbt":"Health", "entity":"@n[type=wandering_trader,tag=--DEBUG]"}, " "], "\\n", [" Move Task: ", {"score":{"name": "@n[type=wandering_trader,tag=--DEBUG]", "objective": "penguin.movement.task"}, "color":"green"}, " Cooldown: ", {"score":{"name": "@n[type=wandering_trader,tag=--DEBUG]", "objective": "penguin.movement.cooldown"}, "color":"aqua"}, " "], "\\n", [" Idea timer: ", {"score":{"name": "@n[type=wandering_trader,tag=--DEBUG]", "objective": "penguin.idea_timer"}, "color":"yellow"}, " Shoot cooldown: ", {"score":{"name": "@n[type=wandering_trader,tag=--DEBUG]", "objective": "penguin.shoot.cooldown"}, "color":"light_purple"}, " "], "\\n", [" Look-around Cooldown: ", {"score":{"name": "@n[type=wandering_trader,tag=--DEBUG]", "objective": "penguin.look_around.cooldown"}, "color":"green"}, " "], "\\n", [" Mood: ", {"score":{"name": "@n[type=wandering_trader,tag=--DEBUG]", "objective": "penguin.mood"}, "color":"red"}, " "]]'

tag @e remove --DEBUG
