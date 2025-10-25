playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.2 2

data modify storage eden:temp wrench.block_data.customname set from block ~ ~ ~ CustomName
data modify storage eden:temp wrench.block_data.items set from block ~ ~ ~ Items

function nice_things:wrench/block/init

data modify block ~ ~ ~ CustomName set from storage eden:temp wrench.block_data.customname
data modify block ~ ~ ~ Items set from storage eden:temp wrench.block_data.items

data remove storage eden:temp wrench.block_data

execute as @s[gamemode=!creative] if items entity @s weapon.mainhand minecraft:music_disc_13[minecraft:custom_data={"nice_things":"wrench"}] run return run function nice_things:wrench/damage {"hand":"mainhand"}
execute as @s[gamemode=!creative] if items entity @s weapon.offhand minecraft:music_disc_13[minecraft:custom_data={"nice_things":"wrench"}] run return run function nice_things:wrench/damage {"hand":"offhand"}