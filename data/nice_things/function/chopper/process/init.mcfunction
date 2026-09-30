schedule function nice_things:chopper/process/init 15t

execute as @e[type=item_display,tag=nice_things.chopper.display] at @s if entity @a[distance=..64] run function nice_things:chopper/process/tick_one
