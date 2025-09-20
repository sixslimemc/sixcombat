#> sixcombat:_/systems/arrow/init_new
#--------------------
# ./check
#--------------------

tag @s add _sixcombat.checked
scoreboard players set *arrow.is_new _sixcombat 1

data modify entity @s {} merge from storage sixcombat:_ var.arrow.data
