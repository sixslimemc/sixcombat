#> sixcombat:_/player/ench/echo_shot/refire
#--------------------
# ./fire
#--------------------

data modify storage delay:in delay set value {ticks:4, command:"function sixcombat:_/player/ench/echo_shot/fire"}
data modify storage delay:in delay.data set from storage delay:api task.data
execute store result storage delay:in delay.data.remaining_shots int 1 run scoreboard players get *echo_shot.remaining_shots _sixcombat
function delay:delay