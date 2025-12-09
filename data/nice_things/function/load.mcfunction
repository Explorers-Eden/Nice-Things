##default scoreboard
scoreboard objectives add nice_things.technical dummy

##additional scoreboards
scoreboard objectives add nice_things.container dummy
scoreboard objectives add nice_things.wrench dummy

##fixed scoreboard entries
scoreboard players set $1 nice_things.technical 1

##set data pack version
data modify storage eden:datapack nice_things.version set value "1.7"