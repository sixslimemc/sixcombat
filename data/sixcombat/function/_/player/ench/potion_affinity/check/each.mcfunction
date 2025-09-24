#> sixcombat:_/player/erch/potion_affinity/check/each
#--------------------
# ./add
#--------------------

data modify storage sixcombat:_ var.potion_affinity.this_effect set from storage sixcombat:_ var.potion_affinity.effects[-1]

execute if function sixcombat:_/player/ench/potion_affinity/check/is_valid run function sixcombat:_/player/ench/potion_affinity/check/modify

data remove storage sixcombat:_ var.potion_affinity.effects[-1]
execute if data storage sixcombat:_ var.potion_affinity.effects[0] run function sixcombat:_/player/ench/potion_affinity/check/each