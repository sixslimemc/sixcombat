#> mindfulp-weapons:_/cache/main
#--------------------
# _/load
#--------------------

data remove storage mindfulp-weapons:_ cache

# weapons:
data modify storage mindfulp-weapons:_ var.cache.weapons set from storage mindfulp-weapons:config weapons
execute if data storage mindfulp-weapons:_ var.cache.weapons[0] run function mindfulp-weapons:_/cache/weapons/each

# airborne_attributes:
data modify storage mindfulp-weapons:_ airborne_attributes set from storage mindfulp-weapons:config airborne_attributes

data remove storage mindfulp-weapons:_ var.cache