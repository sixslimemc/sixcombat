#> mindfulweapons:_/airborne/ground/attributes/each
#--------------------
# ../trigger
#--------------------

$attribute @s $(type) modifier remove mindfulweapons:airborne

data remove storage mindfulweapons:_ var.airborne.attributes[-1]
execute if data storage mindfulweapons:_ var.airborne.attributes[0] run function mindfulweapons:_/airborne/ground/attributes/each with storage mindfulweapons:_ var.airborne.attributes[-1]
