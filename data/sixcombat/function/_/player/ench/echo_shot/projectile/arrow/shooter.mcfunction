#> sixcombat:_/player/ench/echo_shot/projectile/arrow/shooter
#--------------------
# ./on_check
#--------------------

say shoot
data modify storage delay:in delay set value {ticks:4, command:"function sixcombat:_/player/ench/echo_shot/trigger", data:{projectile_type:1}}
execute store result storage delay:in delay.data.remaining_shots int 1 run scoreboard players get *echo_shot.level _sixcombat
data modify storage delay:in delay.data.original set from storage sixcombat:_ var.echo_shot.arrow_data
function delay:delay