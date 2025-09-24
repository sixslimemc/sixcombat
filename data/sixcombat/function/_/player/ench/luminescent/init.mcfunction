#> sixcombat:_/player/erch/luminescent/init
#--------------------
# ./tick
#--------------------

tag @s add _sixcombat.luminescent_active

scoreboard players operation *luminescent.id _sixcombat = @s pdata.index
execute summon marker run function sixcombat:_/player/ench/luminescent/proxy/spawn