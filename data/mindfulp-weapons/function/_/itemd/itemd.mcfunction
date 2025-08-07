#> mindfulp-weapons/_/itemd/itemd
#--------------------
# <!> itemd:itemd
#--------------------

execute if items entity @s container.* *[minecraft:custom_data~{_:true}] run return 0

data modify storage mindfulp-weapons:_ x.item set from entity @s item.id
execute store success score *x _mindfulp-weapons run function mindfulp-weapons:_/itemd/get_item with storage mindfulp-weapons:_ x

execute unless score *x _mindfulp-weapons matches 1 run return 0

data modify entity @s item.components merge from storage mindfulp-weapons:_ var.itemd.get_item.components
data modify entity @s item.components."minecraft:attribute_modifiers" append from storage mindfulp-weapons:_ var.itemd.get_item.attributes[]