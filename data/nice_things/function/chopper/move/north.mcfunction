execute align x positioned ~.5 ~ ~ run tp ~ ~ ~
data modify entity @s Motion set value [0d,0d,-0.30d]
data modify entity @s[type=item] Age set value 0s

damage @s[type=!item] 2 minecraft:generic
execute as @s[type=item] if items entity @s container.0 #nice_things:convertable_by_chopper run function nice_things:chopper/convert with entity @s Item

execute as @n[type=item_display,tag=nice_things.chopper.display] at @s run playsound minecraft:item.bundle.drop_contents block @a ~ ~ ~ 0.1 1.5