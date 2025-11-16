playsound minecraft:block.glass.place block @a ~ ~ ~ 0.8
setblock ~ ~ ~ minecraft:barrier

$execute align xyz run summon item_display ~.5 ~.5 ~.5 \
    {\
        billboard:"fixed",\
        data:{type:$(type)},\
        Tags:["nice_things.display_case.block"],\
        transformation:{\
            left_rotation:[0f,0f,0f,1f],\
            right_rotation:[0f,0f,0f,1f],\
            translation:[0f,0f,0f],\
            scale:[1f,1f,1f]\
        },\
        item:{\
            id:"minecraft:barrier",\
            count:1,\
            components:{\
                "minecraft:item_model":"nice_things:$(type)_display_case"\
            }\
        }\
    }

$execute align xyz run summon item_display ~.5 ~.5 ~.5 \
    {\
        billboard:"fixed",\
        interpolation_duration:250,\
        teleport_duration:250,\
        data:{type:$(type)},\
        Tags:["nice_things.display_case.item"],\
        transformation:{\
            left_rotation:[0f,0f,0f,1f],\
            right_rotation:[0f,0f,0f,1f],\
            translation:[0f,0f,0f],\
            scale:[.5f,.5f,.5f]\
        }\
    }

$execute align xyz run summon interaction ~.5 ~ ~.5 \
    {\
        width:1.01f,\
        height:1.0f,\
        response:1b,\
        data:{type:$(type)},\
        Tags:["nice_things.display_case.interaction"]\
    }

execute as @e[type=interaction,tag=nice_things.display_case.interaction,distance=..1] \
    unless data entity @s data.owner \
        run data modify entity @s data.owner set from entity @p[distance=..16] UUID

kill @s