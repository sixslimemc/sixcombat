#> sixcombat:_/player/ench/spread_shot/projectile/arrow/shooter
#--------------------
# s./main
#--------------------

execute if entity @s[gamemode=creative] run return 2

data modify storage six:in get_next_ammo set value {amount:1, custom_items:["minecraft:arrow", "minecraft:tipped_arrow", "minecraft:spectral_arrow"]}
execute store result score *x _sixcombat run function six:player/get_next_ammo

execute unless score *x _sixcombat matches 1.. run return 0

data modify storage sixcombat:_ var.spread_shot.ammo_entry set from storage six:out get_next_ammo.result[0]
data modify storage sixcombat:_ var.spread_shot.ammo_entry.item.count set value 1
function sixcombat:_/player/util/decriment_ammo with storage sixcombat:_ var.spread_shot.ammo_entry

return 1