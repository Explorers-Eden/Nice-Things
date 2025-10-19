advancement revoke @s only nice_things:display_case/left_click
data modify storage eden:temp nice_things.display_case.owner_uuid set from entity @s UUID

execute as @e[type=interaction,tag=nice_things.display_case.interaction,distance=..16] at @s \
    if data entity @s attack \
        run function nice_things:display_case/left_click/check with storage eden:temp nice_things.display_case