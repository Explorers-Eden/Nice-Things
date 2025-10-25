execute if block ~ ~ ~ minecraft:observer run return run function nice_things:wrench/rotate/facing_up_down {"block":"minecraft:observer"}
execute if block ~ ~ ~ minecraft:piston run return run function nice_things:wrench/rotate/facing_up_down {"block":"minecraft:piston"}
execute if block ~ ~ ~ minecraft:sticky_piston run return run function nice_things:wrench/rotate/facing_up_down {"block":"minecraft:sticky_piston"}
execute if block ~ ~ ~ minecraft:dispenser run return run function nice_things:wrench/rotate/facing_up_down {"block":"minecraft:dispenser"}
execute if block ~ ~ ~ minecraft:dropper run return run function nice_things:wrench/rotate/facing_up_down {"block":"minecraft:dropper"}

execute if block ~ ~ ~ minecraft:hopper[facing=north] run return run setblock ~ ~ ~ minecraft:hopper[facing=east]
execute if block ~ ~ ~ minecraft:hopper[facing=east] run return run setblock ~ ~ ~ minecraft:hopper[facing=south]
execute if block ~ ~ ~ minecraft:hopper[facing=south] run return run setblock ~ ~ ~ minecraft:hopper[facing=west]
execute if block ~ ~ ~ minecraft:hopper[facing=west] run return run setblock ~ ~ ~ minecraft:hopper[facing=down]
execute if block ~ ~ ~ minecraft:hopper[facing=down] run return run setblock ~ ~ ~ minecraft:hopper[facing=north]