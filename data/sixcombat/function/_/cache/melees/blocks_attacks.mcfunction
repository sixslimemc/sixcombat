#> sixcombat:_/cache/melees/blocks_attacks
#--------------------
# ./each
#--------------------

data modify storage sixcombat:_ util.in.blocking.config set from storage sixcombat:_ var.cache.this_melee.blocks_attacks
function sixcombat:_/util/eval/blocking/main

data modify storage sixcombat:_ var.cache.entry.components."minecraft:blocks_attacks" set from storage sixcombat:_ util.out.blocking.component
data modify storage sixcombat:_ var.cache.entry.components."minecraft:custom_data".sixcombat._.blocking_data set from storage sixcombat:_ util.out.blocking.blocking_data
data modify storage sixcombat:_ var.cache.entry.lore append from storage sixcombat:_ util.out.blocking.lore