advancement revoke @s only nice_things:display_case/right_click
data modify storage eden:temp nice_things.display_case.owner_uuid set from entity @s UUID
tag @s add display_interaction

execute as @e[type=minecraft:interaction,tag=nice_things.display_case.interaction,distance=..16] at @s \
    if data entity @s interaction \
        run function nice_things:display_case/right_click/check with storage eden:temp nice_things.display_case

execute as @e[type=minecraft:interaction,tag=nice_things.display_case.interaction,distance=..16] at @s if data entity @s interaction run data remove entity @s interaction