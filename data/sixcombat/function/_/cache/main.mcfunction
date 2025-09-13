#> sixcombat:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage sixcombat:_ cache

# melees:
data modify storage sixcombat:_ var.cache.melees set from storage sixcombat:config melee
execute if data storage sixcombat:_ var.cache.melees[0] run function sixcombat:_/cache/melees/each

# armors:
data modify storage sixcombat:_ var.cache.armors set from storage sixcombat:config armor
execute if data storage sixcombat:_ var.cache.armors[0] run function sixcombat:_/cache/armors/each

# airborne_attributes:
data modify storage sixcombat:_ cache.airborne_modifiers set from storage sixcombat:config airborne_modifiers

data remove storage sixcombat:_ var.cache