schedule function nice_things:display_case/remove 5s

execute as @e[type=item_display,tag=nice_things.display_case.item] at @s unless block ~ ~ ~ minecraft:barrier run kill @s
execute as @e[type=item_display,tag=nice_things.display_case.block] at @s unless block ~ ~ ~ minecraft:barrier run kill @s
execute as @e[type=interaction,tag=nice_things.display_case.interaction] at @s unless block ~ ~ ~ minecraft:barrier run kill @s
