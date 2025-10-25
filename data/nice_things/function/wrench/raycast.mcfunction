execute if block ~ ~ ~ #nice_things:wrench_rotatable run return run function nice_things:wrench/exec
execute unless block ~ ~ ~ #nice_things:wrench_rotatable run scoreboard players add @s nice_things.wrench 1

#execute if score @s nice_things.wrench matches ..50 positioned ^ ^ ^0.1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Small:1b,Marker:1b}
execute if score @s nice_things.wrench matches ..50 positioned ^ ^ ^0.1 run function nice_things:wrench/raycast