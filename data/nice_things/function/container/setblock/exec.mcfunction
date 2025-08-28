playsound minecraft:block.iron.place block @a ~ ~ ~ 0.8

summon text_display ~ ~ ~ {billboard:"fixed",shadow:1b,alignment:"center",Tags:["nice_things.container.text"],Passengers:[{id:"minecraft:item_display",billboard:"fixed",item_display:"gui",Tags:["nice_things.container.item"],transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,.45f,-0.51f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:structure_void",count:1}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.85f,0f],scale:[0.4f,0.4f,0.4f]},text:{"bold":false,"color":"#a1a1a1","italic":false,"text":""},background:16711680}
ride @n[type=text_display,distance=..3,tag=nice_things.container.text] mount @s

#south
execute if entity @p[y_rotation=-45..45] run data modify entity @s Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] on passengers run execute on passengers run data modify entity @s Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] on passengers run data modify entity @s Rotation[0] set value -180.0f
execute if entity @p[y_rotation=-45..45] run tp @s ~ ~ ~-.51
#west
execute if entity @p[y_rotation=45..135] run data modify entity @s Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135] on passengers run execute on passengers run data modify entity @s Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135] on passengers run data modify entity @s Rotation[0] set value -90.0f
execute if entity @p[y_rotation=45..135] run tp @s ~.51 ~ ~
#east
execute if entity @p[y_rotation=-135..-45] run data modify entity @s Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] on passengers run execute on passengers run data modify entity @s Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] on passengers run data modify entity @s Rotation[0] set value 90.0f
execute if entity @p[y_rotation=-135..-45] run tp @s ~-.51 ~ ~
#north
execute if entity @p[y_rotation=-179.99..-135] run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] on passengers run execute on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=-179.99..-135] run tp @s ~ ~ ~.51
execute if entity @p[y_rotation=135..179.99] run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] on passengers run execute on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] on passengers run data modify entity @s Rotation[0] set value 0.0f
execute if entity @p[y_rotation=135..179.99] run tp @s ~ ~ ~.51

data modify entity @s item.components."minecraft:item_model" set value "nice_things:container"
data modify entity @s Rotation[1] set value 0.0f
data modify entity @s transformation.translation[1] set value 0.5f
data modify entity @s transformation.translation[2] set value -0.51f

setblock ~ ~ ~ minecraft:petrified_oak_slab[type=double]

tag @s remove nice_things.container.spawner