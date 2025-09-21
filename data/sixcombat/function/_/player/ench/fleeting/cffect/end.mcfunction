#> sixcombat:_/player/ench/fleeting/cffect/end
#--------------------
# @cffect:end : sixcombat.enchantment.armor.fleeting 
#--------------------

execute store result score *x _sixcombat run data get storage cffect:api this[0].instance.data.this_segment

execute if score *x _sixcombat matches ..1 run return run attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/armor/fleeting

scoreboard players remove *x _sixcombat 1

data modify storage cffect:in give.id set value "sixcombat.enchantment.armor.fleeting"
data modify storage cffect:in give.duration set from storage cffect:api this[0].instance.data.segment_duration
data modify storage cffect:in give.data set from storage cffect:api this[0].instance.data
execute store result storage cffect:in give.data.this_segment int 1 run scoreboard players get *x _sixcombat

function cffect:give

