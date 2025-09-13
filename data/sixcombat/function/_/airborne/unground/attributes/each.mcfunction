#> sixcombat:_/airborne/unground/each
#--------------------
# ../trigger
#--------------------

$attribute @s $(type) modifier add sixcombat:airborne $(amount) $(operation)

data remove storage sixcombat:_ var.airborne.attributes[-1]
execute if data storage sixcombat:_ var.airborne.attributes[0] run function sixcombat:_/airborne/unground/attributes/each with storage sixcombat:_ var.airborne.attributes[-1]
