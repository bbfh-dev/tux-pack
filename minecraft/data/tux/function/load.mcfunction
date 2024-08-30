say Loaded Tux datapack (by BubbleFish)

scoreboard objectives add tux.vars dummy
scoreboard objectives add tux.tmp dummy

scoreboard objectives add tux.id dummy
scoreboard objectives add tux.player_id dummy

scoreboard objectives add tux.animation dummy
scoreboard objectives add tux.prev_animation dummy

scoreboard objectives add tux.movement_task dummy
scoreboard objectives add tux.movement_cooldown dummy
scoreboard objectives add tux.update_count dummy
scoreboard objectives add tux.prev_update_count dummy

scoreboard objectives add tux.idea_timer dummy

execute if score DEBUG tux.vars matches 1 run function debug:tick

team add arch "Arch"
team modify arch color aqua
team modify arch friendlyFire true

team add gentoo "Gentoo"
team modify gentoo color light_purple
team modify gentoo friendlyFire true

team add mint "Mint"
team modify mint color green
team modify arch friendlyFire true

team add ubuntu "Ubuntu"
team modify ubuntu color red
team modify ubuntu friendlyFire true
