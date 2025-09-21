#> sixcombat:_/player/ench/fleeting/cffect/start
#--------------------
# @cffect:start : sixcombat.enchantment.armor.fleeting  
#--------------------

attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/armor/fleeting

# get potency
execute store result score *x _sixcombat run data get storage cffect:api this[0].instance.data.segment_potency 100
execute store result score *y _sixcombat run data get storage cffect:api this[0].instance.data.this_segment
scoreboard players operation *x _sixcombat *= *y _sixcombat

execute store result storage sixcombat:_ x.potency float 0.01 run scoreboard players get *x _sixcombat

function sixcombat:_/player/ench/fleeting/cffect/apply_modifier with storage sixcombat:_ x
