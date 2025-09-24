#> sixcombat:_/player/erch/luminescent/end
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.luminescent_active

# kill proxies:
scoreboard players operation *x _sixcombat = @s pdata.index
execute as @e[type=marker, tag=_sixcombat.luminescent_proxy] if score @s _sixcombat.linked_player = *x _sixcombat run kill @s