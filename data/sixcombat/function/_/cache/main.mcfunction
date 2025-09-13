#> sixcombat:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage sixcombat:_ cache

# weapons:
data modify storage sixcombat:_ var.cache.weapons set from storage sixcombat:config weapons
execute if data storage sixcombat:_ var.cache.weapons[0] run function sixcombat:_/cache/weapons/each

# airborne_attributes:
data modify storage sixcombat:_ cache.airborne_modifiers set from storage sixcombat:config airborne_modifiers

data remove storage sixcombat:_ var.cache