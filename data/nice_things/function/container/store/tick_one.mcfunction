execute if data entity @s data.stored_item{id:"minecraft:air"} as @e[type=item,distance=..0.6,sort=random,limit=1] at @s run function nice_things:container/store/new_item with entity @s Item

execute unless data entity @s data.stored_item{id:"minecraft:air"} as @e[type=item,distance=..0.6] at @s if data entity @s Item.components run function nice_things:container/store/add_item_w_components with entity @s Item

execute unless data entity @s data.stored_item{id:"minecraft:air"} as @e[type=item,distance=..0.6] at @s unless data entity @s Item.components run function nice_things:container/store/add_item_wo_components with entity @s Item
