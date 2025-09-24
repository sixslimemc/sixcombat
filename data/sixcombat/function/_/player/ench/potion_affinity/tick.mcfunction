#> sixcombat:_/player/erch/potion_affinity/tick
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.potion_affinity_tick

execute if score @s _sixcombat.potion_affinity_ticks matches 20.. store result storage sixcombat:_ x.pindex int 1 run scoreboard players get @s pdata.index
execute if score @s _sixcombat.potion_affinity_ticks matches 20.. run function sixcombat:_/player/ench/potion_affinity/check/do with storage sixcombat:_ x

scoreboard players add @s _sixcombat.potion_affinity_ticks 1