#> sixcombat:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage sixcombat:_ cache

# weapons:
data modify storage sixcombat:_ var.cache.melees set from storage sixcombat:config melee
execute if data storage sixcombat:_ var.cache.melees[0] run function sixcombat:_/cache/melees/each

# airborne_attributes:
data modify storage sixcombat:_ cache.airborne_modifiers set from storage sixcombat:config airborne_modifiers

data remove storage sixcombat:_ var.cache