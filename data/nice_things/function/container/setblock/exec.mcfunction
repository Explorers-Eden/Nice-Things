playsound minecraft:block.wood.place block @a ~ ~ ~ 0.8
setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]

summon item_display ~ ~ ~ {billboard:"fixed",Tags:["nice_things.container.spawner","nice_things.container.display"],data:{stored_item:{id:"minecraft:air",count:0,components:{}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,-0.51f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"nice_things:container"}}}
summon text_display ~ ~ ~ {billboard:"fixed",shadow:1b,alignment:"center",Tags:["nice_things.container.text"],Passengers:[{id:"minecraft:item_display",billboard:"fixed",item_display:"gui",Tags:["nice_things.container.item"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,.45f,-0.51f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:structure_void",count:1}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.85f,0f],scale:[0.4f,0.4f,0.4f]},text:{"bold":false,"color":"#a1a1a1","italic":false,"text":""},background:16711680}
ride @n[type=text_display,distance=..3,tag=nice_things.container.text] mount @n[type=item_display,tag=nice_things.container.spawner,distance=..10]

#south
execute if entity @p[y_rotation=-45..45] run data modify entity @n[type=item_display,tag=nice_things.container.spawner,distance=..10] Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.container.spawner,distance=..10] ~ ~-0.5 ~-0.51
execute if entity @p[y_rotation=-45..45] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run execute on passengers run data modify entity @s Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run data modify entity @s Rotation[0] set value -180.0f
#west
execute if entity @p[y_rotation=45..135] run data modify entity @n[type=item_display,tag=nice_things.container.spawner,distance=..10] Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135 ] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.container.spawner,distance=..10] ~0.51 ~-0.5 ~
execute if entity @p[y_rotation=45..135] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run execute on passengers run data modify entity @s Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run data modify entity @s Rotation[0] set value -90.0f
#east
execute if entity @p[y_rotation=-135..-45] run data modify entity @n[type=item_display,tag=nice_things.container.spawner,distance=..10] Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.container.spawner,distance=..10] ~-0.51 ~-0.5 ~
execute if entity @p[y_rotation=-135..-45] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run execute on passengers run data modify entity @s Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run data modify entity @s Rotation[0] set value 90.0f
#north
execute if entity @p[y_rotation=-179.99..-135] run data modify entity @n[type=item_display,tag=nice_things.container.spawner,distance=..10] Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.container.spawner,distance=..10] ~ ~-0.5 ~0.51
execute if entity @p[y_rotation=-179.99..-135] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run execute on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] run data modify entity @n[type=item_display,tag=nice_things.container.spawner,distance=..10] Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] align xyz positioned ~.5 ~.5 ~.5 run tp @n[type=item_display,tag=nice_things.container.spawner,distance=..10] ~ ~-0.5 ~0.51
execute if entity @p[y_rotation=135..179.99] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run execute on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] as @n[type=item_display,tag=nice_things.container.spawner,distance=..10] on passengers run data modify entity @s Rotation[0] set value 0.0f

data modify entity @s Rotation[1] set value 0.0f

tag @n[type=item_display,tag=nice_things.container.spawner,distance=..10] remove nice_things.container.spawner
kill @s