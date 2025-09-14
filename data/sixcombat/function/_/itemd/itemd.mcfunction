#> sixcombat/_/itemd/itemd
#--------------------
# <!> itemd:itemd
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

data remove storage sixcombat:_ var.itemd.modified
data modify storage sixcombat:_ var.itemd.original set from entity @s item

function sixcombat:_/itemd/get_item with storage sixcombat:_ var.itemd.original

execute if items entity @s container.0 minecraft:shield unless data storage sixcombat:_ var.itemd.original.components."minecraft:custom_data".sixcombat.shield.type run data modify storage sixcombat:_ var.itemd.original.components."minecraft:custom_data".sixcombat.shield.type set from storage sixcombat:_ cache.shield_fallback

execute if data storage sixcombat:_ var.itemd.original.components."minecraft:custom_data".sixcombat.shield.type run function sixcombat:_/itemd/shield

execute unless data storage sixcombat:_ var.itemd.modified run return 0

data modify entity @s item.components merge from storage sixcombat:_ var.itemd.modified.components
data modify entity @s item.components."minecraft:attribute_modifiers" append from storage sixcombat:_ var.itemd.modified.attributes[]
execute if data storage sixcombat:_ var.itemd.modified.lore[0] run data modify entity @s item.components."minecraft:lore" append from storage sixcombat:_ var.itemd.modified.lore[]