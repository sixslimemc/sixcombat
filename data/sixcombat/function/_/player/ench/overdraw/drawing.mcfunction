#> sixcombat:_/player/ench/overdraw/drawing
#--------------------
# ../main
#--------------------

execute if entity @s[tag=!_sixcombat.overdrawing] run function sixcombat:_/player/ench/overdraw/start

scoreboard players add @s _sixcombat.overdraw_time 1

# limit levels to enchantment levels
execute if score @s _sixcombat.overdraw_level >= @s _sixcombat.overdraw_ench run return 0

execute if score @s _sixcombat.overdraw_time >= @s _sixcombat.overdraw_threshold run function sixcombat:_/player/ench/overdraw/increment/trigger