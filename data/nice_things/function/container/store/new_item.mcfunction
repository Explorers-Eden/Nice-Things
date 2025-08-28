execute if items entity @s container.0 #nice_things:not_stackable unless data entity @s Item.components{"minecraft:max_stack_size":16} run return run \
    execute if items entity @s container.0 #nice_things:not_stackable unless data entity @s Item.components{"minecraft:max_stack_size":64} run return fail

execute if data entity @s Item.components{"minecraft:max_stack_size":1} run return fail

execute if items entity @s container.0 #nice_things:container if data entity @s Item.components."minecraft:container" run return fail


data modify entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item.count set from entity @s Item.count
data modify entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item.id set from entity @s Item.id
execute if data entity @s Item.components run data modify entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item.components set from entity @s Item.components
execute store result score @n[type=item_display,tag=nice_things.container.display,distance=..0.6] nice_things.container run data get entity @s Item.count
data modify entity @n[type=item_display,tag=nice_things.container.item,distance=..0.6] item set from entity @s Item

function nice_things:container/update_text_display with entity @s Item

particle minecraft:reverse_portal ~ ~.35 ~ .1 .1 .1 .01 10
playsound minecraft:block.vault.insert_item block @a ~ ~ ~ 0.3 1.75
kill @s
