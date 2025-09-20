#> sixcombat:_/player/ench/spread_shot/projectile/arrow/main
#--------------------
# ../trigger
#--------------------

# get {..ammo_entry}
execute on origin store result score *x _sixcombat run function sixcombat:_/player/ench/spread_shot/projectile/arrow/shooter
execute if score *x _sixcombat matches 0 run return run kill @s
execute if score *x _sixcombat matches 2 run return 2

data modify storage sixcombat:_ var.spread_shot.entity_data set from entity @s
data remove storage sixcombat:_ var.spread_shot.entity_data.item

scoreboard players reset *spread_shot.is_new _sixcombat
execute unless entity @s[type=arrow] if data storage sixcombat:_ var.spread_shot.ammo_entry.item{id:"minecraft:arrow"} summon arrow run function sixcombat:_/player/ench/spread_shot/projectile/arrow/init_new
execute unless entity @s[type=arrow] if data storage sixcombat:_ var.spread_shot.ammo_entry.item{id:"minecraft:tipped_arrow"} summon arrow run function sixcombat:_/player/ench/spread_shot/projectile/arrow/init_new
execute unless entity @s[type=spectral_arrow] if data storage sixcombat:_ var.spread_shot.ammo_entry.item{id:"minecraft:spectral_arrow"} summon spectral_arrow run function sixcombat:_/player/ench/spread_shot/projectile/arrow/init_new

execute if score *spread_shot.is_new _sixcombat matches 1 run return run kill @s

function sixcombat:_/player/ench/spread_shot/projectile/arrow/finalize