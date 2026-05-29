schedule function nice_things:chopper/process/init 15t

execute as @e[type=item_display,tag=nice_things.chopper.display,y_rotation=-180] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/north
execute as @e[type=item_display,tag=nice_things.chopper.display,y_rotation=0] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/south
execute as @e[type=item_display,tag=nice_things.chopper.display,y_rotation=90] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/west
execute as @e[type=item_display,tag=nice_things.chopper.display,y_rotation=-90] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/east