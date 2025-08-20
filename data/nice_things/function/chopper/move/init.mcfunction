schedule function nice_things:chopper/move/init 15t

execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.chopper.display,y_rotation=-180,distance=..0.65] run function nice_things:chopper/move/north
execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.chopper.display,y_rotation=0,distance=..0.65] run function nice_things:chopper/move/south
execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.chopper.display,y_rotation=90,distance=..0.65] run function nice_things:chopper/move/west
execute as @e[type=!#nice_things:invalid_for_conveyor] at @s if entity @e[type=item_display,tag=nice_things.chopper.display,y_rotation=-90,distance=..0.65] run function nice_things:chopper/move/east