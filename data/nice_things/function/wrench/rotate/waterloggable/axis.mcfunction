$execute if block ~ ~ ~ $(block)[waterlogged=true,axis=x] run return run setblock ~ ~ ~ $(block)[waterlogged=true,axis=y]
$execute if block ~ ~ ~ $(block)[waterlogged=true,axis=y] run return run setblock ~ ~ ~ $(block)[waterlogged=true,axis=z]
$execute if block ~ ~ ~ $(block)[waterlogged=true,axis=z] run return run setblock ~ ~ ~ $(block)[waterlogged=true,axis=x]

$execute if block ~ ~ ~ $(block)[waterlogged=false,axis=x] run return run setblock ~ ~ ~ $(block)[waterlogged=false,axis=y]
$execute if block ~ ~ ~ $(block)[waterlogged=false,axis=y] run return run setblock ~ ~ ~ $(block)[waterlogged=false,axis=z]
$execute if block ~ ~ ~ $(block)[waterlogged=false,axis=z] run return run setblock ~ ~ ~ $(block)[waterlogged=false,axis=x]