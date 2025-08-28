schedule function nice_things:conveyor/move/init 15t

execute as @e[type=!#nice_things:invalid_for_tech_blocks] at @s if entity @e[type=item_display,tag=nice_things.conveyor.display,y_rotation=-180,distance=..0.6] run function nice_things:conveyor/move/north
execute as @e[type=!#nice_things:invalid_for_tech_blocks] at @s if entity @e[type=item_display,tag=nice_things.conveyor.display,y_rotation=0,distance=..0.6] run function nice_things:conveyor/move/south
execute as @e[type=!#nice_things:invalid_for_tech_blocks] at @s if entity @e[type=item_display,tag=nice_things.conveyor.display,y_rotation=90,distance=..0.6] run function nice_things:conveyor/move/west
execute as @e[type=!#nice_things:invalid_for_tech_blocks] at @s if entity @e[type=item_display,tag=nice_things.conveyor.display,y_rotation=-90,distance=..0.6] run function nice_things:conveyor/move/east