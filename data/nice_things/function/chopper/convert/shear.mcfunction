playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 0.15 0.75

execute if items entity @s container.0 minecraft:pumpkin run loot spawn ~ ~ ~ loot minecraft:blocks/carved_pumpkin

execute if items entity @s container.0 minecraft:white_wool run loot spawn ~ ~ ~ loot minecraft:blocks/white_wool_stairs
execute if items entity @s container.0 minecraft:orange_wool run loot spawn ~ ~ ~ loot minecraft:blocks/orange_wool_stairs
execute if items entity @s container.0 minecraft:magenta_wool run loot spawn ~ ~ ~ loot minecraft:blocks/magenta_wool_stairs
execute if items entity @s container.0 minecraft:light_blue_wool run loot spawn ~ ~ ~ loot minecraft:blocks/light_blue_wool_stairs
execute if items entity @s container.0 minecraft:yellow_wool run loot spawn ~ ~ ~ loot minecraft:blocks/yellow_wool_stairs
execute if items entity @s container.0 minecraft:lime_wool run loot spawn ~ ~ ~ loot minecraft:blocks/lime_wool_stairs
execute if items entity @s container.0 minecraft:pink_wool run loot spawn ~ ~ ~ loot minecraft:blocks/pink_wool_stairs
execute if items entity @s container.0 minecraft:gray_wool run loot spawn ~ ~ ~ loot minecraft:blocks/gray_wool_stairs
execute if items entity @s container.0 minecraft:light_gray_wool run loot spawn ~ ~ ~ loot minecraft:blocks/light_gray_wool_stairs
execute if items entity @s container.0 minecraft:cyan_wool run loot spawn ~ ~ ~ loot minecraft:blocks/cyan_wool_stairs
execute if items entity @s container.0 minecraft:purple_wool run loot spawn ~ ~ ~ loot minecraft:blocks/purple_wool_stairs
execute if items entity @s container.0 minecraft:blue_wool run loot spawn ~ ~ ~ loot minecraft:blocks/blue_wool_stairs
execute if items entity @s container.0 minecraft:brown_wool run loot spawn ~ ~ ~ loot minecraft:blocks/brown_wool_stairs
execute if items entity @s container.0 minecraft:green_wool run loot spawn ~ ~ ~ loot minecraft:blocks/green_wool_stairs
execute if items entity @s container.0 minecraft:red_wool run loot spawn ~ ~ ~ loot minecraft:blocks/red_wool_stairs
execute if items entity @s container.0 minecraft:black_wool run loot spawn ~ ~ ~ loot minecraft:blocks/black_wool_stairs

item modify entity @s container.0 nice_things:detract_item