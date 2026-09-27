##default scoreboard
scoreboard objectives add nice_things.technical dummy

##additional scoreboards
scoreboard objectives add nice_things.container dummy
scoreboard objectives add nice_things.wrench dummy
scoreboard objectives add nice_things.kaleidoscope dummy
scoreboard objectives add nice_things.follow.dx dummy
scoreboard objectives add nice_things.follow.dy dummy
scoreboard objectives add nice_things.follow.dz dummy
scoreboard objectives add nice_things.follow.len2 dummy
scoreboard objectives add nice_things.follow.motionX dummy
scoreboard objectives add nice_things.follow.motionZ dummy

##fixed scoreboard entries
scoreboard players set $1 nice_things.technical 1

##set data pack version
data modify storage eden:datapack nice_things.version set value "3.0"