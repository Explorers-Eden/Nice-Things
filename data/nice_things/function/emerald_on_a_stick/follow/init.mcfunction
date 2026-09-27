schedule function nice_things:emerald_on_a_stick/follow/init 1t

execute as @a at @s unless entity @e[type=villager,tag=!mob_manager.settings.exclude,distance=..6] run tag @s remove nice_things.villager_leader
execute as @a unless items entity @s weapon.* minecraft:music_disc_13[minecraft:custom_data={"nice_things":"emerald_on_a_stick"}] run tag @s remove nice_things.villager_leader

execute as @a[gamemode=!spectator,tag=!nice_things.villager_leader] at @s if items entity @s weapon.* minecraft:music_disc_13[minecraft:custom_data={"nice_things":"emerald_on_a_stick"}] \
    if entity @e[type=villager,tag=!mob_manager.settings.exclude,distance=..6] \
        run tag @s add nice_things.villager_leader

execute as @a[tag=nice_things.villager_leader] at @s \
    run execute as @e[type=villager,tag=!mob_manager.settings.exclude,distance=..6] at @s \
        run function nice_things:emerald_on_a_stick/follow/exec
