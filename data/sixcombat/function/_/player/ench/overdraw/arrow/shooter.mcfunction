#> sixcombat:_/player/ench/overdraw/arrow/shooter
#--------------------
# ./trigger
#--------------------

execute store result storage six:in cast.magnitude float 0.42 run scoreboard players get @s _sixcombat.overdraw_level
data modify storage six:in cast.rotation set from entity @s Rotation
function six:vector/cast

data modify storage sixcombat:_ var.overdraw.add_vec set from storage six:out cast.result

# sounds
execute unless score @s _sixcombat.overdraw_level matches 1.. run return 0
scoreboard players set *x _sixcombat 22
scoreboard players operation *x _sixcombat -= @s _sixcombat.overdraw_level
execute store result storage sixcombat:_ x.pitch float 0.065 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/overdraw/arrow/sound with storage sixcombat:_ x