#> mindfulp-weapons:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulp-weapons dummy

# constants:
scoreboard players set *4 _mindfulp-weapons 4
scoreboard players set *10 _mindfulp-weapons 10

# DEBUG:
scoreboard players reset *init _mindfulp-weapons

execute unless score *init _mindfulp-weapons matches 1 run function mindfulp-weapons:_/init
scoreboard players set *init _mindfulp-weapons 1

function mindfulp-weapons:_/cache/main
