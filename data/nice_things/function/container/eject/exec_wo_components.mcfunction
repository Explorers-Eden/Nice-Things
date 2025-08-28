execute if items block ~ ~ ~ container.4 * run return fail

playsound minecraft:block.vault.eject_item block @a ~ ~ ~ 0.3 1.75

$item replace block ~ ~ ~ container.4 with $(id)

scoreboard players operation @s nice_things.container -= $1 nice_things.technical
execute store result entity @s data.stored_item.count int 1 run scoreboard players get @s nice_things.container

execute if score @s nice_things.container matches 1.. run return run function nice_things:container/update_text_display with entity @s data.stored_item

data modify entity @n[type=text_display,tag=nice_things.container.text,distance=..3] text.text set value ""
data modify entity @s data.stored_item merge value {count:0,id:"minecraft:air"}
data remove entity @s data.stored_item.components
data modify entity @n[type=item_display,tag=nice_things.container.item,distance=..3] item merge value {count:1,id:"minecraft:structure_void"}
data remove entity @n[type=item_display,tag=nice_things.container.item,distance=..3] item.components 