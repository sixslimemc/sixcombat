#> sixcombat:_/player/erch/potion_affinity/check/is_valid
#--------------------
# ./each
#--------------------

execute if data storage sixcombat:_ var.potion_affinity.this_effect{show_icon:false} run return fail

return 1