#> sixcombat:_/player/ench/overdraw/arrow/trigger
#--------------------
# @ench : ranged/overdraw
#--------------------

# set {..add_vec}
execute on origin run function sixcombat:_/player/ench/overdraw/arrow/shooter

data modify storage six:in sum.vectors append from entity @s Motion
data modify storage six:in sum.vectors append from storage sixcombat:_ var.arrow.add_vec
function six:vector/sum

data modify storage six:in magnitude.vector set from storage six:out sum.result
function six:vector/magnitude

data modify entity @s Motion set from storage six:out sum.result
