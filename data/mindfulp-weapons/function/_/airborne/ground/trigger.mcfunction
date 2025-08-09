#> mindfulp-weapons:_/airborne/ground/trigger
#--------------------
# _/adv/ground
#--------------------

data modify storage mindfulp-weapons:_ var.airborne.attributes set from storage mindfulp-weapons:_ cache.airborne_modifiers
execute if data storage mindfulp-weapons:_ var.airborne.attributes[0] run function mindfulp-weapons:_/airborne/ground/attributes/each with storage mindfulp-weapons:_ var.airborne.attributes[-1]

data remove storage mindfulp-weapons:_ var.airborne