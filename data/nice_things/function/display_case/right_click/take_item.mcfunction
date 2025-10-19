$execute at @p[tag=display_interaction,distance=..16] run summon item ~ ~ ~ {Item:$(item)}
data remove entity @s item
tag @p[tag=display_interaction,distance=..16] remove display_interaction