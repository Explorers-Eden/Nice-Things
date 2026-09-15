$loot spawn ~ ~ ~ loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)","modifier":[{"type":"minecraft:set_count","count":{"type":"minecraft:score","target":"this","score":"nice_things.container"}},{"type":"minecraft:set_components","components":$(components)}]}]}]}

loot spawn ~ ~ ~ loot nice_things:block/container
execute on passengers run execute on passengers run kill @s
execute on passengers run kill @s
kill @s