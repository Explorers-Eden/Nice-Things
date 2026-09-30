schedule function nice_things:container/store/init 15t

execute as @e[type=item_display,tag=nice_things.container.display] at @s if entity @e[type=item,distance=..0.6] if entity @a[distance=..64] run function nice_things:container/store/tick_one
