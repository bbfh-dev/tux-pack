data merge entity @s {Tags:["+tux", "+tux.debug", "tux.billboard"], transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation:[0.0f, 0.0f, 0.0f, 1.0f], scale:[1.0f, 1.0f, 1.0f], translation:[0.0f, 1.7f, 0.0f]}, shadow:1b, billboard:"vertical", text: '"DEBUG"'}
scoreboard players operation @s penguin.id = latest penguin.id
scoreboard players operation @s player.id = @p player.id
ride @s mount @n[tag=aj.rig_root]
