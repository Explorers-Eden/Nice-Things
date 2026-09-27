execute if entity @s[tag=nice_things.villager_leader] at @s as @e[type=villager,tag=!mob_manager.settings.exclude,distance=..6] if data entity @s {OnGround:1b} run data modify entity @s Motion[1] set value 0.5d

execute as @s[gamemode=!creative] if items entity @s weapon.mainhand minecraft:music_disc_13[minecraft:custom_data={"nice_things":"emerald_on_a_stick"}] run return run function nice_things:emerald_on_a_stick/damage {"hand":"mainhand"}
execute as @s[gamemode=!creative] if items entity @s weapon.offhand minecraft:music_disc_13[minecraft:custom_data={"nice_things":"emerald_on_a_stick"}] run return run function nice_things:emerald_on_a_stick/damage {"hand":"offhand"}
