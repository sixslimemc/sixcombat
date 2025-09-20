#> sixcombat:_/player/ench/echo_shot/init_arrow
#--------------------
# ./fire
#--------------------

data modify storage sixcombat:_ var.echo_shot.init_data set from storage delay:api task.data.original
data modify storage sixcombat:_ var.echo_shot.init_data.Tags set value []
data modify storage sixcombat:_ var.echo_shot.init_data.item set from storage sixcombat:_ var.echo_shot.arrow_item
data remove storage sixcombat:_ var.echo_shot.init_data.Pos

data modify entity @s {} merge from storage sixcombat:_ var.echo_shot.init_data
function sixcombat:_/systems/arrow/check