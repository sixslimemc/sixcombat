#> mindfulweapons/_/itemd/get_item
#--------------------
# ./itemd
#--------------------

data remove storage mindfulweapons:_ var.itemd.get_item
$return run data modify storage mindfulweapons:_ var.itemd.get_item set from storage mindfulweapons:_ cache.items.'$(item)'
