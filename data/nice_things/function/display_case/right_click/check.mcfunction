$execute unless data entity @s data{owner:$(owner_uuid)} run return run data remove entity @s attack

execute \
    unless items entity @p[tag=display_interaction,distance=..16] weapon.mainhand * \
    unless items entity @p[tag=display_interaction,distance=..16] weapon.offhand * \
    positioned ~ ~.5 ~ \
    as @n[type=item_display,tag=nice_things.display_case.item,distance=..0.25] \
    if data entity @s item \
        run return run function nice_things:display_case/right_click/take_item with entity @s

execute positioned ~ ~.5 ~ \
    if items entity @p[tag=display_interaction,distance=..16] weapon.mainhand * \
    as @n[type=item_display,tag=nice_things.display_case.item,distance=..0.25] \
    unless data entity @s item \
        run return run function nice_things:display_case/right_click/place_item/mainhand

execute positioned ~ ~.5 ~ \
    unless items entity @p[tag=display_interaction,distance=..16] weapon.mainhand * \
    if items entity @p[tag=display_interaction,distance=..16] weapon.offhand * \
    as @n[type=item_display,tag=nice_things.display_case.item,distance=..0.25] \
    unless data entity @s item \
        run return run function nice_things:display_case/right_click/place_item/offhand        