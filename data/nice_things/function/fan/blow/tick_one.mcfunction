execute if entity @s[y_rotation=-180] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/north
execute if entity @s[y_rotation=0] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/south
execute if entity @s[y_rotation=90] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/west
execute if entity @s[y_rotation=-90] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.9] at @s run function nice_things:fan/blow/east
