playsound minecraft:block.wood.place block @a ~ ~ ~ 0.8

summon item_display ~ ~ ~ {billboard:"fixed",Tags:["nice_things.chopper.spawner","nice_things.chopper.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.51f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"nice_things:chopper"}}}

#south
execute if entity @p[y_rotation=-45..45] run data modify entity @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] Rotation[0] set value -180.0f
#west
execute if entity @p[y_rotation=45..135] run data modify entity @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] Rotation[0] set value -90.0f
#east
execute if entity @p[y_rotation=-135..-45] run data modify entity @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] Rotation[0] set value 90.0f
#north
execute if entity @p[y_rotation=-179.99..-135] run data modify entity @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] run data modify entity @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] Rotation[0] set value 0.0f

data modify entity @s Rotation[1] set value 0.0f

execute align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] ~ ~0.51 ~

setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]

tag @n[type=item_display,tag=nice_things.chopper.spawner,distance=..10] remove nice_things.chopper.spawner
kill @s