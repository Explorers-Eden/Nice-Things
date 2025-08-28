schedule function nice_things:container/store/init 15t

execute as @e[type=item_display,tag=nice_things.container.display] at @s \
    if data entity @s data.stored_item{id:"minecraft:air"} \
    if entity @e[type=item,distance=..0.6] \
        run execute as @e[type=item,distance=..0.6,sort=random,limit=1] at @s \
            run function nice_things:container/store/new_item with entity @s Item


execute as @e[type=item] at @s \
    if data entity @s Item.components if entity @e[type=item_display,tag=nice_things.container.display,distance=..0.6] \
    unless data entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item{id:"minecraft:air"} \
        run function nice_things:container/store/add_item_w_components with entity @s Item


execute as @e[type=item] at @s \
    unless data entity @s Item.components if entity @e[type=item_display,tag=nice_things.container.display,distance=..0.6] \
    unless data entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item{id:"minecraft:air"} \
        run function nice_things:container/store/add_item_wo_components with entity @s Item