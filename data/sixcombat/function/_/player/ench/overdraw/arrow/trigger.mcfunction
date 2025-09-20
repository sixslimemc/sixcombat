#> sixcombat:_/player/ench/overdraw/arrow/trigger
#--------------------
# @ench : ranged/overdraw
#--------------------

execute store result score @s sixcombat.overdrawn_arrow on origin run scoreboard players get @s _sixcombat.overdraw_level

# set {..add_vec}
execute on origin run function sixcombat:_/player/ench/overdraw/arrow/shooter

data modify storage six:in sum.vectors append from entity @s Motion
data modify storage six:in sum.vectors append from storage sixcombat:_ var.overdraw.add_vec
function six:vector/sum

data modify storage six:in magnitude.vector set from storage six:out sum.result
function six:vector/magnitude

data modify entity @s Motion set from storage six:out sum.result

data remove storage sixcombat:_ var.overdraw.add_vec