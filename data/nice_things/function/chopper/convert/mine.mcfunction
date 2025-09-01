playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 0.15 0.75
$loot spawn ~ ~ ~ loot minecraft:blocks/$(item)
item modify entity @s container.0 nice_things:detract_item