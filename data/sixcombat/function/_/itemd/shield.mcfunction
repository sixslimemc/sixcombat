#> sixcombat/_/itemd/shield
#--------------------
# ./itemd
#--------------------

data modify storage sixcombat:_ var.itemd.shield_type set from storage sixcombat:_ var.itemd.original.components."minecraft:custom_data".sixcombat.shield.type

execute if data storage sixcombat:_ var.itemd.shield_type.custom run return run function sixcombat:_/itemd/custom_shield

function sixcombat:_/itemd/get_shield with storage sixcombat:_ var.itemd

data modify storage sixcombat:_ var.itemd.modified.components merge from storage sixcombat:_ var.itemd.shield_data.components
data modify storage sixcombat:_ var.itemd.modified.lore append from storage sixcombat:_ var.itemd.shield_data.lore[]
data modify storage sixcombat:_ var.itemd.modified.attributes append from storage sixcombat:_ var.itemd.shield_data.attributes[]