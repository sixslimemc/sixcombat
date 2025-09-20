#> sixcombat:_/cffect/init_definition
#--------------------
# ./init
#--------------------

data remove storage cffect:data definition.sixcombat

data modify storage cffect:data definition.sixcombat.enchantment.armor.fleeting.start set value "function sixcombat:_/player/ench/fleeting/cffect/start"
data modify storage cffect:data definition.sixcombat.enchantment.armor.fleeting.end set value "function sixcombat:_/player/ench/fleeting/cffect/end"
data modify storage cffect:data definition.sixcombat.enchantment.armor.fleeting.duplicate_handler set value "function sixcombat:_/player/ench/fleeting/cffect/duplicate"