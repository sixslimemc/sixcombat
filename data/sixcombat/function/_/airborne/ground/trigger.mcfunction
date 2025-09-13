#> sixcombat:_/airborne/ground/trigger
#--------------------
# _/adv/ground
#--------------------

data modify storage sixcombat:_ var.airborne.attributes set from storage sixcombat:_ cache.airborne_modifiers
execute if data storage sixcombat:_ var.airborne.attributes[0] run function sixcombat:_/airborne/ground/attributes/each with storage sixcombat:_ var.airborne.attributes[-1]

data remove storage sixcombat:_ var.airborne