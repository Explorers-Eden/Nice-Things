loot spawn ~ ~ ~ loot nice_things:block/display_case
$summon item ~ ~ ~ {Item:$(item)}

setblock ~ ~ ~ minecraft:air
kill @n[type=item_display,distance=..0.25,tag=nice_things.display_case.block]
kill @s