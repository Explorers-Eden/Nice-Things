tag @a remove nice_things.placer
tag @p[scores={nice_things.placed_frame=1..}] add nice_things.placer
execute unless entity @a[tag=nice_things.placer] run tag @p add nice_things.placer
