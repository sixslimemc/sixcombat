#> sixcombat:_/player/erch/luminescent/proxy/main
#--------------------
# ../call_proxy
#--------------------
# executed AT the player

tp @s ~ ~1 ~
scoreboard players operation @s emissive.level = *luminescent.brightness _sixcombat
execute at @s run function emissive:emit
