#> sixcombat:_/player/ench/echo_shot/get_ammo
#--------------------
# ./fire
#--------------------

execute if score *echo_shot.is_creative _sixcombat matches 1 run data modify storage sixcombat:_ var.echo_shot.arrow_item set from storage delay:api task.data.original.item
execute if score *echo_shot.is_creative _sixcombat matches 1 run return 2

execute if score *echo_shot.type _sixcombat matches 1 run data modify storage six:in get_next_ammo.custom_items set value ["minecraft:arrow", "minecraft:spectral_arrow", "minecraft:tipped_arrow"]
execute if score *echo_shot.type _sixcombat matches 2 run data modify storage six:in get_next_ammo.custom_items set value ["minecraft:firework_rocket"]
data modify storage six:in get_next_ammo.amount set value 1
execute store result score *x _sixcombat run function six:player/get_next_ammo

execute unless score *x _sixcombat matches 1.. run return 0

data modify storage sixcombat:_ var.echo_shot.ammo_entry set from storage six:out get_next_ammo.result[0]
data modify storage sixcombat:_ var.echo_shot.ammo_entry.item.count set value 1

function sixcombat:_/player/util/decriment_ammo with storage sixcombat:_ var.echo_shot.ammo_entry

data modify storage sixcombat:_ var.echo_shot.arrow_item set from storage sixcombat:_ var.echo_shot.ammo_entry.item

return 1