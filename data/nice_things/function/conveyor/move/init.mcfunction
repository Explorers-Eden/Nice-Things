schedule function nice_things:conveyor/move/init 15t

execute as @e[type=item_display,tag=nice_things.conveyor.display] at @s if entity @a[distance=..64] run function nice_things:conveyor/move/tick_one
