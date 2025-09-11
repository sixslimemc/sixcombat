#> mindfulweapons:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage mindfulweapons:_ cache

# weapons:
data modify storage mindfulweapons:_ var.cache.weapons set from storage mindfulweapons:config weapons
execute if data storage mindfulweapons:_ var.cache.weapons[0] run function mindfulweapons:_/cache/weapons/each

# airborne_attributes:
data modify storage mindfulweapons:_ cache.airborne_modifiers set from storage mindfulweapons:config airborne_modifiers

data remove storage mindfulweapons:_ var.cache