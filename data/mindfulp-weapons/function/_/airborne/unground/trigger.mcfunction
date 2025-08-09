#> mindfulp-weapons:_/airborne/unground/trigger
#--------------------
# _/adv/unground
#--------------------

data modify storage mindfulp-weapons:_ var.airborne.attributes set from storage mindfulp-weapons:_ cache.airborne_attributes
execute if data storage mindfulp-weapons:_ var.airborne.attributes[0] run function mindfulp-weapons:_/airborne/unground/attributes/each with storage mindfulp-weapons:_ var.airborne.attributes[-1]

data remove storage mindfulp-weapons:_ var.airborne