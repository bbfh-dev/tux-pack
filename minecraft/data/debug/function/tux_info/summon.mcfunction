data merge entity @s {Tags:["+tux", "+tux.debug", "tux.tux_info"], transformation:{left_rotation:[0.0f, 0.0f, 0.0f, 1.0f], right_rotation:[0.0f, 0.0f, 0.0f, 1.0f], scale:[1.0f, 1.0f, 1.0f], translation:[0.0f, 2.0f, 0.0f]}, shadow:1b, billboard:"vertical", text: '"DEBUG"'}
scoreboard players operation @s tux.id = latest tux.id
scoreboard players operation @s tux.player_id = @p tux.player_id
ride @s mount @n[tag=--this.tux]
