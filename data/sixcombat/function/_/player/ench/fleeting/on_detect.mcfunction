#> sixcombat:_/player/ench/fleeting/on_detect
#--------------------
# _/player/main
#--------------------

data modify storage cffect:in give set value {id:"sixcombat.enchantment.fleeting", data:{this_segment:2}}

scoreboard players operation *x _sixcombat = @s _sixcombat.fleeting_trigger
scoreboard players operation *x _sixcombat *= *2 _sixcombat
scoreboard players add *x _sixcombat 8
execute store result storage cffect:in give.data.segment_duration int 1 run scoreboard players get *x _sixcombat
data modify storage cffect:in give.duration set from storage cffect:in give.data.segment_duration

scoreboard players operation *x _sixcombat = @s _sixcombat.fleeting_trigger
scoreboard players set *y _sixcombat 10
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 10
# 0.005 because 0.01 (float scale) / 2 (amount of segments)
execute store result storage cffect:in give.data.segment_potency float 0.005 run scoreboard players get *x _sixcombat

function cffect:give

scoreboard players reset @s _sixcombat.fleeting_trigger

