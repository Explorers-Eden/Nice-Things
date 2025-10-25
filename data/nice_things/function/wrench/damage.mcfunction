
$item modify entity @s weapon.$(hand) nice_things:damage_$(hand)_item

$execute unless items entity @s weapon.$(hand) minecraft:music_disc_13[minecraft:damage=251] run return fail
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1.1
particle minecraft:item{"item":"iron_ingot"} ~ ~0.9 ~ 0.25 0.25 0.25 0.1 10
$item replace entity @s weapon.$(hand) with air