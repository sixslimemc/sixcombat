#> sixcombat:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _sixcombat dummy

# constants:
scoreboard players set *4 _sixcombat 4
scoreboard players set *10 _sixcombat 10

# DEBUG:
scoreboard players reset *init _sixcombat

execute unless score *init _sixcombat matches 1 run function sixcombat:_/init
scoreboard players set *init _sixcombat 1

function sixcombat:_/cache/main
