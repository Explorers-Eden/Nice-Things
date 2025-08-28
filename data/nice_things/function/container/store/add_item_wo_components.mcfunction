execute if score @n[type=item_display,tag=nice_things.container.display,distance=..0.6] nice_things.container matches 10000.. run return fail
$execute unless data entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item{id:"$(id)"} run return fail


execute store result score $temp_count nice_things.technical run data get entity @s Item.count
scoreboard players operation @n[type=item_display,tag=nice_things.container.display,distance=..0.6] nice_things.container += $temp_count nice_things.technical
execute as @n[type=item_display,tag=nice_things.container.display,distance=..0.6] store result entity @s data.stored_item.count int 1 run scoreboard players get @s nice_things.container

function nice_things:container/update_text_display with entity @n[type=item_display,tag=nice_things.container.display,distance=..0.6] data.stored_item

particle minecraft:reverse_portal ~ ~.35 ~ .1 .1 .1 .01 10
playsound minecraft:block.vault.insert_item block @a ~ ~ ~ 0.3 1.75
kill @s