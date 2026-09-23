playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.2 2

data modify storage eden:temp wrench.block_data.customname set from block ~ ~ ~ CustomName
data modify storage eden:temp wrench.block_data.items set from block ~ ~ ~ Items
data modify storage eden:temp wrench.block_data.container set from block ~ ~ ~ components."minecraft:container"

execute if block ~ ~ ~ #nice_things:furnaces run data modify storage eden:temp wrench.block_data.lit_time_remaining set from block ~ ~ ~ lit_time_remaining
execute if block ~ ~ ~ #nice_things:furnaces run data modify storage eden:temp wrench.block_data.lit_total_time set from block ~ ~ ~ lit_total_time
execute if block ~ ~ ~ #nice_things:furnaces run data modify storage eden:temp wrench.block_data.cooking_time_spent set from block ~ ~ ~ cooking_time_spent
execute if block ~ ~ ~ #nice_things:furnaces run data modify storage eden:temp wrench.block_data.cooking_total_time set from block ~ ~ ~ cooking_total_time
execute if block ~ ~ ~ #nice_things:furnaces run data modify storage eden:temp wrench.block_data.recipes_used set from block ~ ~ ~ RecipesUsed

execute if block ~ ~ ~ minecraft:decorated_pot run data modify storage eden:temp wrench.block_data.pot_decorations set from block ~ ~ ~ components."minecraft:pot_decorations"

function nice_things:wrench/block/init

data modify block ~ ~ ~ CustomName set from storage eden:temp wrench.block_data.customname
data modify block ~ ~ ~ Items set from storage eden:temp wrench.block_data.items
data modify block ~ ~ ~ components."minecraft:container" set from storage eden:temp wrench.block_data.container

execute if block ~ ~ ~ #nice_things:furnaces run data modify block ~ ~ ~ lit_time_remaining set from storage eden:temp wrench.block_data.lit_time_remaining
execute if block ~ ~ ~ #nice_things:furnaces run data modify block ~ ~ ~ lit_total_time set from storage eden:temp wrench.block_data.lit_total_time
execute if block ~ ~ ~ #nice_things:furnaces run data modify block ~ ~ ~ cooking_time_spent set from storage eden:temp wrench.block_data.cooking_time_spent
execute if block ~ ~ ~ #nice_things:furnaces run data modify block ~ ~ ~ cooking_total_time set from storage eden:temp wrench.block_data.cooking_total_time
execute if block ~ ~ ~ #nice_things:furnaces run data modify block ~ ~ ~ RecipesUsed set from storage eden:temp wrench.block_data.recipes_used

execute if block ~ ~ ~ minecraft:decorated_pot run data modify block ~ ~ ~ components."minecraft:pot_decorations" set from storage eden:temp wrench.block_data.pot_decorations

data remove storage eden:temp wrench.block_data

execute as @s[gamemode=!creative] if items entity @s weapon.mainhand minecraft:music_disc_13[minecraft:custom_data={"nice_things":"wrench"}] run return run function nice_things:wrench/damage {"hand":"mainhand"}
execute as @s[gamemode=!creative] if items entity @s weapon.offhand minecraft:music_disc_13[minecraft:custom_data={"nice_things":"wrench"}] run return run function nice_things:wrench/damage {"hand":"offhand"}