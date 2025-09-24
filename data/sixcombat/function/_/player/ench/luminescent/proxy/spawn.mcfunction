#> sixcombat:_/player/erch/luminescent/proxy/spawn
#--------------------
# ../init
#--------------------

tag @s add _sixcombat.luminescent_proxy
tag @s add _
scoreboard players operation @s _sixcombat.linked_player = *luminescent.id _sixcombat

data modify entity @s CustomName set value "[_sixcombat] emissive:emit source for Luminescent"