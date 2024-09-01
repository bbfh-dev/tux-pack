data merge entity @s {Tags:["+tux", "tux.penguin"], CustomName:'"Tux"', CanPickUpLoot:false, Offers:{Recipes:[]}, PersistenceRequired:1b, Silent:1b, active_effects:[{id:"invisibility", duration:-1, show_particles:false}, {id:"regeneration", duration:-1, show_particles:false, amplifier:0}, {id:"dolphins_grace", duration:-1, show_particles:false, amplifier:5}], attributes:[{id:"generic.movement_speed", base:0.5}, {id:"generic.water_movement_efficiency", base:0.5}], ArmorItems:[{id:"cod", components:{custom_data:{}}}, {}, {}, {}]}
scoreboard players operation @s penguin.id = latest penguin.id
scoreboard players operation @s player.id = @p player.id
scoreboard players set @s penguin.movement.task 0

function tux:penguin/trades/init
team join tux @s
