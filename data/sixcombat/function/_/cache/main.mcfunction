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

# shield types:
data modify storage sixcombat:_ var.cache.shields set from storage sixcombat:config shield
data modify storage sixcombat:_ var.cache.shield_types set value ['wooden', 'copper', 'iron', 'diamond', 'netherite', 'golden']
execute if data storage sixcombat:_ var.cache.shield_types[0] run function sixcombat:_/cache/shield_types/each

# shield fallback:
data modify storage sixcombat:_ cache.shield_fallback set from storage sixcombat:config shield.fallback

# airborne_attributes:
data modify storage sixcombat:_ cache.airborne_modifiers set from storage sixcombat:config airborne_modifiers

data remove storage sixcombat:_ var.cache