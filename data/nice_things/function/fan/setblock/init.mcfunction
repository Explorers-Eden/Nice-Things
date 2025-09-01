execute as @e[type=minecraft:item_frame,tag=nice_things.fan.spawner] at @s run function nice_things:fan/setblock/exec

execute as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=-180] at @s unless block ~ ~ ~.5 petrified_oak_slab[type=double] run function nice_things:fan/setblock/remove
execute as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=-90] at @s unless block ~-.5 ~ ~ petrified_oak_slab[type=double] run function nice_things:fan/setblock/remove
execute as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=90] at @s unless block ~.5 ~ ~ petrified_oak_slab[type=double] run function nice_things:fan/setblock/remove
execute as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=0] at @s unless block ~ ~ ~-.5 petrified_oak_slab[type=double] run function nice_things:fan/setblock/remove

execute if predicate {"condition":"minecraft:random_chance","chance":0.25} as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=-180] at @s run particle dust{color:[0.800,0.800,0.800],scale:.75} ~ ~.5 ~-.5 .1 .1 .5 0 2 normal
execute if predicate {"condition":"minecraft:random_chance","chance":0.25} as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=-90] at @s run particle dust{color:[0.800,0.800,0.800],scale:.75} ~.5 ~.5 ~ -.5 .1 .1 0 2 normal
execute if predicate {"condition":"minecraft:random_chance","chance":0.25} as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=90] at @s run particle dust{color:[0.800,0.800,0.800],scale:.75} ~-.5 ~.5 ~ .5 .1 .1 0 2 normal
execute if predicate {"condition":"minecraft:random_chance","chance":0.25} as @e[type=minecraft:item_display,tag=nice_things.fan.display,y_rotation=0] at @s run particle dust{color:[0.800,0.800,0.800],scale:.75} ~ ~.5 ~.5 .1 .1 -.5 0 2 normal