#> sixcombat:_/player/erch/gravity/tick
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.gravity_tick

execute unless predicate sixcombat:_/jump_input if entity @s[tag=!_sixcombat.gravity_active] run function sixcombat:_/player/ench/gravity/start
execute if predicate sixcombat:_/jump_input if entity @s[tag=_sixcombat.gravity_active] run function sixcombat:_/player/ench/gravity/end