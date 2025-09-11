#> mindfulweapons:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulweapons dummy

# constants:
scoreboard players set *4 _mindfulweapons 4
scoreboard players set *10 _mindfulweapons 10

# DEBUG:
scoreboard players reset *init _mindfulweapons

execute unless score *init _mindfulweapons matches 1 run function mindfulweapons:_/init
scoreboard players set *init _mindfulweapons 1

function mindfulweapons:_/cache/main
