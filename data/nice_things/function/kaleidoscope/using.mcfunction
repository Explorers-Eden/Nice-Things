advancement revoke @s only nice_things:using_kaleidoscope
execute as @s[tag=!nice_things.kaleidoscope.active] run playsound minecraft:item.spyglass.use player @s ~ ~ ~ 1 2

scoreboard players set @s nice_things.kaleidoscope 2
tag @s add nice_things.kaleidoscope.active
posteffect add @s nice_things:kaleidoscope