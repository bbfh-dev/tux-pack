data merge entity @s {Tags:["+tux", "tux.movement"], CustomName:'"Tux"', CanPickUpLoot:false, Offers:{Recipes:[]}, PersistenceRequired:1b, Silent:1b, active_effects:[{id:"invisibility", duration:-1, show_particles:false}], attributes:[{id:"generic.movement_speed", base:0.5}]}
scoreboard players operation @s tux.id = latest tux.id
scoreboard players operation @s tux.player_id = @p tux.player_id
scoreboard players set @s tux.movement_task 0
