execute if entity @s[y_rotation=-180] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/north
execute if entity @s[y_rotation=0] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/south
execute if entity @s[y_rotation=90] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/west
execute if entity @s[y_rotation=-90] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.65] at @s run function nice_things:chopper/process/east
