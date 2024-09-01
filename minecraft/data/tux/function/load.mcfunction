say Loaded Tux datapack (by BubbleFish)

team add tux "Tux"
team modify tux seeFriendlyInvisibles false
team modify tux friendlyFire true

scoreboard objectives add tux.tmp dummy
scoreboard objectives add tux.vars dummy

scoreboard objectives add penguin.id dummy
scoreboard objectives add penguin.animation dummy
scoreboard objectives add penguin.animation.prev dummy
scoreboard objectives add penguin.animation.cooldown dummy
scoreboard objectives add penguin.movement.task dummy
scoreboard objectives add penguin.movement.cooldown dummy
scoreboard objectives add penguin.attack.cooldown dummy
scoreboard objectives add penguin.shoot.cooldown dummy
scoreboard objectives add penguin.look_around.cooldown dummy
scoreboard objectives add penguin.idea_timer dummy
scoreboard objectives add penguin.mood dummy
scoreboard objectives add penguin.type dummy
scoreboard objectives add penguin.stare_timer dummy

scoreboard objectives add player.id dummy
scoreboard objectives add player.traded custom:traded_with_villager
scoreboard objectives add entity.id dummy

execute if score DEBUG tux.vars matches 1 run function debug:tick

forceload add 0 0
