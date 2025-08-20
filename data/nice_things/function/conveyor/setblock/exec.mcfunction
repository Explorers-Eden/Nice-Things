playsound minecraft:block.wood.place block @a ~ ~ ~ 0.8

#south
execute if entity @p[y_rotation=-45..45] run data modify entity @s Rotation[0] set value -180.0f
#west
execute if entity @p[y_rotation=45..135] run data modify entity @s Rotation[0] set value -90.0f
#east
execute if entity @p[y_rotation=-135..-45] run data modify entity @s Rotation[0] set value 90.0f
#north
execute if entity @p[y_rotation=-179.99..-135] run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] run data modify entity @s Rotation[0] set value 0.0f

data modify entity @s item.components."minecraft:item_model" set value "nice_things:conveyor"
data modify entity @s Rotation[1] set value 0.0f
data modify entity @s transformation.translation[1] set value -0.51f
tp @s ~ ~1.01 ~

setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]

tag @s remove nice_things.conveyor.spawner