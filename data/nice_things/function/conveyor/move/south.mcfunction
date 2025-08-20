execute align x positioned ~.5 ~ ~ run tp ~ ~ ~
data modify entity @s Motion set value [0d,0d,0.30d]
data modify entity @s[type=item] Age set value 0s

execute as @s[type=item] if block ~ ~ ~ minecraft:water if items entity @s container.0 #nice_things:convertable_by_water run function nice_things:conveyor/convert

execute as @n[type=item_display,tag=nice_things.conveyor.display] at @s run playsound minecraft:item.bundle.drop_contents block @a ~ ~ ~ 0.1 1.5