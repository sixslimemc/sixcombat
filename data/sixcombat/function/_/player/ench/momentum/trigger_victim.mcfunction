#> sixcombat:_/player/ench/momentum/trigger_victim
#--------------------
# @ench : melee/momentum
#--------------------
# ~ called after attacker.

data modify storage cffect:in give set value {id:"sixcombat.enchantment.melee.momentum.victim"}
execute store result storage cffect:in give.data.level int 1 run scoreboard players get *momentum.level _sixcombat
scoreboard players operation *x _sixcombat = *momentum.level _sixcombat
scoreboard players set *y _sixcombat 4
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 16
execute store result storage cffect:in give.duration int 1 run scoreboard players get *x _sixcombat
function cffect:give

scoreboard players reset *momentum.level _sixcombat