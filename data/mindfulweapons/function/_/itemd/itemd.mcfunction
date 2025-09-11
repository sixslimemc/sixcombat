#> mindfulweapons/_/itemd/itemd
#--------------------
# <!> itemd:itemd
#--------------------

execute if items entity @s container.* *[minecraft:custom_data~{_:true}] run return 0

data modify storage mindfulweapons:_ x.item set from entity @s item.id
execute store success score *x _mindfulweapons run function mindfulweapons:_/itemd/get_item with storage mindfulweapons:_ x

execute unless score *x _mindfulweapons matches 1 run return 0

data modify entity @s item.components merge from storage mindfulweapons:_ var.itemd.get_item.components
data modify entity @s item.components."minecraft:attribute_modifiers" append from storage mindfulweapons:_ var.itemd.get_item.attributes[]