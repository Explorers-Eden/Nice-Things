data modify entity @s item set from entity @p[tag=display_interaction,distance=..16] SelectedItem
data modify entity @s item.count set value 1

data modify entity @s data.item set from entity @p[tag=display_interaction,distance=..16] SelectedItem
data modify entity @s data.item.count set value 1

item modify entity @p[tag=display_interaction,distance=..16] weapon.mainhand nice_things:detract_item
tag @p[tag=display_interaction,distance=..16] remove display_interaction