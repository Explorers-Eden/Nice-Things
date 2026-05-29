schedule function nice_things:fan/blow/init 15t

execute as @e[type=item_display,tag=nice_things.fan.display,y_rotation=-180] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/north
execute as @e[type=item_display,tag=nice_things.fan.display,y_rotation=0] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/south
execute as @e[type=item_display,tag=nice_things.fan.display,y_rotation=90] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/west
execute as @e[type=item_display,tag=nice_things.fan.display,y_rotation=-90] at @s as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/east