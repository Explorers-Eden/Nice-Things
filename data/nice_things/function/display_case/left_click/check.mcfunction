$execute unless data entity @s data{owner:$(owner_uuid)} run return run data remove entity @s attack

execute positioned ~ ~.5 ~ \
    as @n[type=item_display,tag=nice_things.display_case.item,distance=..0.25] \
    unless data entity @s item \
        run function nice_things:display_case/setblock/remove_wo_item


execute positioned ~ ~.5 ~ \
    as @n[type=item_display,tag=nice_things.display_case.item,distance=..0.25] \
    if data entity @s item \
        run function nice_things:display_case/setblock/remove_w_item with entity @s


kill @s