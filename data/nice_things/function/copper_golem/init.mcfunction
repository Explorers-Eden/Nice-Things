schedule function nice_things:copper_golem/init 19t

execute as @e[type=minecraft:copper_golem] at @s unless items entity @s saddle * run \
    execute as @n[type=item,distance=..1] if items entity @s container.0 #minecraft:shearable_from_copper_golem run function nice_things:copper_golem/equip_head