#> sixcombat:_/player/erch/antigravity/tick
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.antigravity_tick

execute if predicate sixcombat:_/jump_input if entity @s[tag=!_sixcombat.antigravity_active] run function sixcombat:_/player/ench/antigravity/start
execute unless predicate sixcombat:_/jump_input if entity @s[tag=_sixcombat.antigravity_active] run function sixcombat:_/player/ench/antigravity/end