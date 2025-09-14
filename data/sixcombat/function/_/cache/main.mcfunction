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

# shield names:
data modify storage sixcombat:_ var.cache.shield_names.wooden set value {text:"Wooden Shield", color:"green"}
data modify storage sixcombat:_ var.cache.shield_names.copper set value {text:"Copper Shield", color:"gold"}
data modify storage sixcombat:_ var.cache.shield_names.iron set value {text:"Iron Shield", color:"gray"}
data modify storage sixcombat:_ var.cache.shield_names.diamond set value {text:"Diamond Shield", color:"aqua"}
data modify storage sixcombat:_ var.cache.shield_names.netherite set value {text:"Netherite Shield", color:"dark_gray"}
data modify storage sixcombat:_ var.cache.shield_names.golden set value {text:"Golden Shield", color:"yellow"}

# shield types:
data modify storage sixcombat:_ var.cache.shields set from storage sixcombat:config shield
data modify storage sixcombat:_ var.cache.shield_types set value ['wooden', 'copper', 'iron', 'diamond', 'netherite', 'golden']
execute if data storage sixcombat:_ var.cache.shield_types[0] run function sixcombat:_/cache/shield_types/each

# shield fallback:
data modify storage sixcombat:_ cache.shield_fallback set from storage sixcombat:config shield.fallback

# airborne_attributes:
data modify storage sixcombat:_ cache.airborne_modifiers set from storage sixcombat:config airborne_modifiers

data remove storage sixcombat:_ var.cache