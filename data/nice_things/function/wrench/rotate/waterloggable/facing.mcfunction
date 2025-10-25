$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=north] run return run setblock ~ ~ ~ $(block)[waterlogged=true,facing=east]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=east] run return run setblock ~ ~ ~ $(block)[waterlogged=true,facing=south]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=south] run return run setblock ~ ~ ~ $(block)[waterlogged=true,facing=west]
$execute if block ~ ~ ~ $(block)[waterlogged=true,facing=west] run return run setblock ~ ~ ~ $(block)[waterlogged=true,facing=north]

$execute if block ~ ~ ~ $(block)[waterlogged=false,facing=north] run return run setblock ~ ~ ~ $(block)[waterlogged=false,facing=east]
$execute if block ~ ~ ~ $(block)[waterlogged=false,facing=east] run return run setblock ~ ~ ~ $(block)[waterlogged=false,facing=south]
$execute if block ~ ~ ~ $(block)[waterlogged=false,facing=south] run return run setblock ~ ~ ~ $(block)[waterlogged=false,facing=west]
$execute if block ~ ~ ~ $(block)[waterlogged=false,facing=west] run return run setblock ~ ~ ~ $(block)[waterlogged=false,facing=north]