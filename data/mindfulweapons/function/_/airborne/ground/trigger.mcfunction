#> mindfulweapons:_/airborne/ground/trigger
#--------------------
# _/adv/ground
#--------------------

data modify storage mindfulweapons:_ var.airborne.attributes set from storage mindfulweapons:_ cache.airborne_modifiers
execute if data storage mindfulweapons:_ var.airborne.attributes[0] run function mindfulweapons:_/airborne/ground/attributes/each with storage mindfulweapons:_ var.airborne.attributes[-1]

data remove storage mindfulweapons:_ var.airborne