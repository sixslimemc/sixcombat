#> sixcombat:_/player/ench/spread_shot/projectile/arrow/init_new
#--------------------
# ./main
#--------------------

scoreboard players set *spread_shot.is_new _sixcombat 1

data modify entity @s {} merge from storage sixcombat:_ var.spread_shot.entity_data

function sixcombat:_/player/ench/spread_shot/projectile/arrow/finalize