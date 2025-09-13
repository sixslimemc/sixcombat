#> sixcombat:_/airborne/ground/attributes/each
#--------------------
# ../trigger
#--------------------

$attribute @s $(type) modifier remove sixcombat:airborne

data remove storage sixcombat:_ var.airborne.attributes[-1]
execute if data storage sixcombat:_ var.airborne.attributes[0] run function sixcombat:_/airborne/ground/attributes/each with storage sixcombat:_ var.airborne.attributes[-1]
