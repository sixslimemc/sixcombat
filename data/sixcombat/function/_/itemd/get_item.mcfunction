#> sixcombat/_/itemd/get_item
#--------------------
# ./itemd
#--------------------

data remove storage sixcombat:_ var.itemd.get_item
$return run data modify storage sixcombat:_ var.itemd.get_item set from storage sixcombat:_ cache.items.'$(item)'
