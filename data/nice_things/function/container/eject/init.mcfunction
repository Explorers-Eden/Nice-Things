schedule function nice_things:container/eject/init 7t

execute as @e[type=minecraft:item_display,tag=nice_things.container.display] at @s if entity @a[distance=..64] run function nice_things:container/eject/tick_one
