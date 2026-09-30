schedule function nice_things:fan/blow/init 15t

execute as @e[type=item_display,tag=nice_things.fan.display] at @s if entity @a[distance=..64] run function nice_things:fan/blow/tick_one
