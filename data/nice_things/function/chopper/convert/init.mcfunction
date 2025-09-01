$particle block{block_state:"$(id)"} ~ ~.3 ~ 0 0 0 1 5 normal

data modify storage eden:temp nice_things.chopper.item set string entity @s Item.id 10

execute if items entity @s container.0 #nice_things:mineable_by_chopper run return run function nice_things:chopper/convert/mine with storage eden:temp nice_things.chopper
execute if items entity @s container.0 #nice_things:strippable_by_chopper run return run function nice_things:chopper/convert/strip with storage eden:temp nice_things.chopper