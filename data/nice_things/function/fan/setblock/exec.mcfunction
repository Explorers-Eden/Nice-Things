playsound minecraft:block.wood.place block @a ~ ~ ~ 0.8
setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]

summon item_display ~ ~ ~ {billboard:"fixed",Tags:["nice_things.fan.spawner","nice_things.fan.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,-0.51f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"nice_things:fan"}}}

#south
execute if entity @p[y_rotation=-45..45] run data modify entity @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] ~ ~-0.5 ~-0.51
#west
execute if entity @p[y_rotation=45..135] run data modify entity @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135 ] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] ~0.51 ~-0.5 ~
#east
execute if entity @p[y_rotation=-135..-45] run data modify entity @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] ~-0.51 ~-0.5 ~
#north
execute if entity @p[y_rotation=-179.99..-135] run data modify entity @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] ~ ~-0.5 ~0.51
execute if entity @p[y_rotation=135..179.99] run data modify entity @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] ~ ~-0.5 ~0.51

data modify entity @s Rotation[1] set value 0.0f

tag @n[type=item_display,tag=nice_things.fan.spawner,distance=..10] remove nice_things.fan.spawner
kill @s