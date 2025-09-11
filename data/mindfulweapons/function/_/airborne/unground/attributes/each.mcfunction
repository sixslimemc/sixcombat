#> mindfulweapons:_/airborne/unground/each
#--------------------
# ../trigger
#--------------------

$attribute @s $(type) modifier add mindfulweapons:airborne $(amount) $(operation)

data remove storage mindfulweapons:_ var.airborne.attributes[-1]
execute if data storage mindfulweapons:_ var.airborne.attributes[0] run function mindfulweapons:_/airborne/unground/attributes/each with storage mindfulweapons:_ var.airborne.attributes[-1]
