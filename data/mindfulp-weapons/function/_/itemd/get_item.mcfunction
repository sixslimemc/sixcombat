#> mindfulp-weapons/_/itemd/get_item
#--------------------
# ./itemd
#--------------------

data remove storage mindfulp-weapons:_ var.itemd.get_item
$return run data modify storage mindfulp-weapons:_ var.itemd.get_item set from storage mindfulp-weapons:_ items.'$(item)'
