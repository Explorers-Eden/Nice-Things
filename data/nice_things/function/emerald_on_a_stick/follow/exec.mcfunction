effect give @s minecraft:slowness 2 255 true
effect give @s minecraft:fire_resistance 2 0 true

rotate @s facing entity @p[distance=..8,tag=nice_things.villager_leader]

execute if block ~ ~-1 ~ minecraft:honey_block run return 0

execute store result score @s nice_things.follow.motionX run data get entity @s Motion[0] 100
execute store result score @s nice_things.follow.motionZ run data get entity @s Motion[2] 100

execute as @p[distance=..8,tag=nice_things.villager_leader] run data modify storage eden:temp nice_things.emerald_on_a_stick.follow.leader_pos set from entity @s Pos
data modify storage eden:temp nice_things.emerald_on_a_stick.follow.self_pos set from entity @s Pos

execute store result score @s nice_things.follow.dx run compute default float nice_things:emerald_on_a_stick/follow/dx 5
execute store result score @s nice_things.follow.dy run compute default float nice_things:emerald_on_a_stick/follow/dy 50
execute store result score @s nice_things.follow.dz run compute default float nice_things:emerald_on_a_stick/follow/dz 5

execute store result score @s nice_things.follow.len2 run compute default float nice_things:emerald_on_a_stick/follow/len2 25

execute if score @s nice_things.follow.len2 matches ..99 run return 0

execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s nice_things.follow.dx
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s nice_things.follow.dz
execute as @s[scores={nice_things.follow.dy=43..}] run scoreboard players set @s nice_things.follow.dy 42
execute as @s[scores={nice_things.follow.dy=1..,nice_things.follow.motionX=-2..2,nice_things.follow.motionZ=-2..2}] if data entity @s {OnGround:1b} store result entity @s Motion[1] double 0.01 run scoreboard players get @s nice_things.follow.dy
