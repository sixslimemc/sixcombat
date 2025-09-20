#> sixcombat:_/player/ench/spread_shot/projectile/arrow/shooter
#--------------------
# s./main
#--------------------

data modify storage six:in get_next_ammo set value {amount:1, custom_items:["minecraft:arrow", "minecraft:tipped_arrow", "minecraft:spectral_arrow"]}
function six:player/get_next_ammo

