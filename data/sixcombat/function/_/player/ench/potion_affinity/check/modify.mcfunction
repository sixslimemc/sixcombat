#> sixcombat:_/player/erch/potion_affinity/check/each
#--------------------
# ./add
#--------------------

execute store result score *x _sixcombat run data get storage sixcombat:_ var.potion_affinity.this_effect.duration 0.05
scoreboard players operation *x _sixcombat += *potion_affinity.add_seconds _sixcombat

execute store result storage sixcombat:_ var.potion_affinity.this_effect.seconds int 1 run scoreboard players get *x _sixcombat

execute unless data storage sixcombat:_ var.potion_affinity.this_effect.amplifier run data modify storage sixcombat:_ var.potion_affinity.this_effect.amplifier set value 0b

function sixcombat:_/player/ench/potion_affinity/check/apply_effect with storage sixcombat:_ var.potion_affinity.this_effect
