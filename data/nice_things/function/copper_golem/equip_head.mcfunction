execute at @n[type=copper_golem,distance=..1] run particle minecraft:happy_villager ~ ~0.75 ~ .3 .3 .3 0.5 10
data modify entity @n[type=copper_golem,distance=..1] equipment.saddle set from entity @s Item
item modify entity @s container.0 fabled_roots:detract_item