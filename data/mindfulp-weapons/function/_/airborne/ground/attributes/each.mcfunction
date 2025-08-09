#> mindfulp-weapons:_/airborne/ground/attributes/each
#--------------------
# ../trigger
#--------------------

$attribute @s $(type) modifier remove mindfulp-weapons:airborne

data remove storage mindfulp-weapons:_ var.airborne.attributes[-1]
execute if data storage mindfulp-weapons:_ var.airborne.attributes[0] run function mindfulp-weapons:_/airborne/ground/attributes/each with storage mindfulp-weapons:_ var.airborne.attributes[-1]
