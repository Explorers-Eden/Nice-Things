execute if entity @s[y_rotation=-180] unless block ~ ~ ~.5 petrified_oak_slab[type=double] run return run function nice_things:fan/setblock/remove
execute if entity @s[y_rotation=-90] unless block ~-.5 ~ ~ petrified_oak_slab[type=double] run return run function nice_things:fan/setblock/remove
execute if entity @s[y_rotation=90] unless block ~.5 ~ ~ petrified_oak_slab[type=double] run return run function nice_things:fan/setblock/remove
execute if entity @s[y_rotation=0] unless block ~ ~ ~-.5 petrified_oak_slab[type=double] run return run function nice_things:fan/setblock/remove
execute if predicate {"type":"minecraft:random_chance","chance":0.75} if entity @s[y_rotation=-180] run particle dust{color:[0.800,0.800,0.800],scale:.75} ~ ~.5 ~-.5 .1 .1 .5 0 2 normal
execute if predicate {"type":"minecraft:random_chance","chance":0.75} if entity @s[y_rotation=-90] run particle dust{color:[0.800,0.800,0.800],scale:.75} ~.5 ~.5 ~ -.5 .1 .1 0 2 normal
execute if predicate {"type":"minecraft:random_chance","chance":0.75} if entity @s[y_rotation=90] run particle dust{color:[0.800,0.800,0.800],scale:.75} ~-.5 ~.5 ~ .5 .1 .1 0 2 normal
execute if predicate {"type":"minecraft:random_chance","chance":0.75} if entity @s[y_rotation=0] run particle dust{color:[0.800,0.800,0.800],scale:.75} ~ ~.5 ~.5 .1 .1 -.5 0 2 normal
