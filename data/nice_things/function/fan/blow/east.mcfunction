data modify entity @s Motion set value [1.0d,0.3d,0d]
data modify entity @s[type=item] Age set value 0s

execute as @s[type=item] if items entity @s container.0 #nice_things:convertable_by_fan run function nice_things:fan/convert with entity @s Item

execute as @n[type=item_display,tag=nice_things.fan.display] at @s run playsound minecraft:entity.breeze.wind_burst block @a ~ ~ ~ 0.1 0.5