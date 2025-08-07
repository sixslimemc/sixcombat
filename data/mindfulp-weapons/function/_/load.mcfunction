#> mindfulp-weapons:_/load
#--------------------
# @LOAD
#--------------------

scoreboard objectives add _mindfulp-weapons dummy

execute unless score *init _mindfulp-weapons matches 1 run function mindfulp-weapons:_/init
scoreboard players set *init _mindfulp-weapons 1
