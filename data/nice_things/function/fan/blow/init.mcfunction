schedule function nice_things:fan/blow/init 15t

execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.fan.display,y_rotation=-180,distance=..0.9] run function nice_things:fan/blow/north
execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.fan.display,y_rotation=0,distance=..0.9] run function nice_things:fan/blow/south
execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.fan.display,y_rotation=90,distance=..0.9] run function nice_things:fan/blow/west
execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.fan.display,y_rotation=-90,distance=..0.9] run function nice_things:fan/blow/east