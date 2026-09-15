schedule function nice_things:kaleidoscope/scheduled 3t

execute as @a[tag=nice_things.kaleidoscope.active] run scoreboard players remove @s nice_things.kaleidoscope 1
execute as @a[tag=nice_things.kaleidoscope.active,scores={nice_things.kaleidoscope=..0}] at @s run function nice_things:kaleidoscope/stop
