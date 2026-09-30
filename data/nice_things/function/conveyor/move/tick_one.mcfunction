execute if entity @s[y_rotation=-180] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.6] at @s run function nice_things:conveyor/move/north
execute if entity @s[y_rotation=0] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.6] at @s run function nice_things:conveyor/move/south
execute if entity @s[y_rotation=90] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.6] at @s run function nice_things:conveyor/move/west
execute if entity @s[y_rotation=-90] as @e[type=!#nice_things:invalid_for_tech_blocks,distance=..0.6] at @s run function nice_things:conveyor/move/east
