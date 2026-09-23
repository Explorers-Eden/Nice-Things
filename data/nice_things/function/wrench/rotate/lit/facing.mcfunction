$execute if block ~ ~ ~ $(block)[lit=true,facing=north] run return run setblock ~ ~ ~ $(block)[lit=true,facing=east]
$execute if block ~ ~ ~ $(block)[lit=true,facing=east] run return run setblock ~ ~ ~ $(block)[lit=true,facing=south]
$execute if block ~ ~ ~ $(block)[lit=true,facing=south] run return run setblock ~ ~ ~ $(block)[lit=true,facing=west]
$execute if block ~ ~ ~ $(block)[lit=true,facing=west] run return run setblock ~ ~ ~ $(block)[lit=true,facing=north]

$execute if block ~ ~ ~ $(block)[lit=false,facing=north] run return run setblock ~ ~ ~ $(block)[lit=false,facing=east]
$execute if block ~ ~ ~ $(block)[lit=false,facing=east] run return run setblock ~ ~ ~ $(block)[lit=false,facing=south]
$execute if block ~ ~ ~ $(block)[lit=false,facing=south] run return run setblock ~ ~ ~ $(block)[lit=false,facing=west]
$execute if block ~ ~ ~ $(block)[lit=false,facing=west] run return run setblock ~ ~ ~ $(block)[lit=false,facing=north]
