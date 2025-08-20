playsound minecraft:block.wood.place block @a ~ ~ ~ 0.8

#south
execute if entity @p[y_rotation=-45..45] run data modify entity @s Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] run tp @s ~ ~ ~-.51
#west
execute if entity @p[y_rotation=45..135] run data modify entity @s Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135] run tp @s ~.51 ~ ~
#east
execute if entity @p[y_rotation=-135..-45] run data modify entity @s Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] run tp @s ~-.51 ~ ~
#north
execute if entity @p[y_rotation=-179.99..-135] run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] run tp @s ~ ~ ~.51
execute if entity @p[y_rotation=135..179.99] run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] run tp @s ~ ~ ~.51

data modify entity @s item.components."minecraft:item_model" set value "nice_things:fan"
data modify entity @s Rotation[1] set value 0.0f
data modify entity @s transformation.translation[1] set value 0.5f
data modify entity @s transformation.translation[2] set value -0.51f

setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]

tag @s remove nice_things.fan.spawner