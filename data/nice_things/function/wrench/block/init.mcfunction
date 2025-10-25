execute if block ~ ~ ~ #nice_things:container run return run function nice_things:wrench/block/container
execute if block ~ ~ ~ #nice_things:furnaces run return run function nice_things:wrench/block/furnaces
execute if block ~ ~ ~ #nice_things:redstone run return run function nice_things:wrench/block/redstone
execute if block ~ ~ ~ #nice_things:glazed_terracotta run return run function nice_things:wrench/block/glazed_terracotta
execute if block ~ ~ ~ #minecraft:logs run return run function nice_things:wrench/block/logs
execute if block ~ ~ ~ #minecraft:chains run return run function nice_things:wrench/block/chains
execute if block ~ ~ ~ #minecraft:anvil run return run function nice_things:wrench/block/anvil
execute if block ~ ~ ~ #minecraft:lightning_rods run return run function nice_things:wrench/block/lightning_rods
execute if block ~ ~ ~ #minecraft:copper_golem_statues run return run function nice_things:wrench/block/copper_golem_statues

execute if block ~ ~ ~ minecraft:decorated_pot run function nice_things:wrench/rotate/waterloggable/facing {"block":"minecraft:decorated_pot"}
execute if block ~ ~ ~ minecraft:calibrated_sculk_sensor run function nice_things:wrench/rotate/waterloggable/facing {"block":"minecraft:calibrated_sculk_sensor"}
execute if block ~ ~ ~ minecraft:stonecutter run function nice_things:wrench/rotate/facing {"block":"minecraft:stonecutter"}

execute if block ~ ~ ~ minecraft:grindstone[face=floor,facing=north] run return run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=east]
execute if block ~ ~ ~ minecraft:grindstone[face=floor,facing=east] run return run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=south]
execute if block ~ ~ ~ minecraft:grindstone[face=floor,facing=south] run return run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=west]
execute if block ~ ~ ~ minecraft:grindstone[face=floor,facing=west] run return run setblock ~ ~ ~ minecraft:grindstone[face=floor,facing=north]
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=north] run return run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=east]
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=east] run return run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=south]
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=south] run return run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=west]
execute if block ~ ~ ~ minecraft:grindstone[face=ceiling,facing=west] run return run setblock ~ ~ ~ minecraft:grindstone[face=ceiling,facing=north]
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=north] run return run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=east]
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=east] run return run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=south]
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=south] run return run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=west]
execute if block ~ ~ ~ minecraft:grindstone[face=wall,facing=west] run return run setblock ~ ~ ~ minecraft:grindstone[face=wall,facing=north]