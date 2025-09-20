#> sixcombat:_/player/ench/echo_shot/projectile/arrow/shooter
#--------------------
# ./on_check
#--------------------

data modify storage delay:in delay set value {ticks:2, command:"function sixcombat:_/player/ench/echo_shot/fire", data:{projectile_type:1}}
execute store result storage delay:in delay.data.remaining_shots int 1 run scoreboard players get *echo_shot.level _sixcombat
data modify storage delay:in delay.data.original set from storage sixcombat:_ var.echo_shot.original
function delay:delay