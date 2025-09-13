#> sixcombat/_/itemd/itemd
#--------------------
# <!> itemd:itemd
#--------------------

execute if items entity @s container.0 *[minecraft:custom_data~{_:true}] run return 0

data modify storage sixcombat:_ x.item set from entity @s item.id
execute store success score *x _sixcombat run function sixcombat:_/itemd/get_item with storage sixcombat:_ x

execute unless score *x _sixcombat matches 1 run return 0

data modify entity @s item.components merge from storage sixcombat:_ var.itemd.get_item.components
data modify entity @s item.components."minecraft:attribute_modifiers" append from storage sixcombat:_ var.itemd.get_item.attributes[]