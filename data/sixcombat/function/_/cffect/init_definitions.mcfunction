#> sixcombat:_/cffect/init_definition
#--------------------
# ./init
#--------------------

data remove storage cffect:data definition.sixcombat

# [ enchantments ]

# fleeting:
data modify storage cffect:data definition.sixcombat.enchantment.armor.fleeting.start set value "function sixcombat:_/player/ench/fleeting/cffect/start"
data modify storage cffect:data definition.sixcombat.enchantment.armor.fleeting.end set value "function sixcombat:_/player/ench/fleeting/cffect/end"
data modify storage cffect:data definition.sixcombat.enchantment.armor.fleeting.duplicate_handler set value "function sixcombat:_/player/ench/fleeting/cffect/duplicate"

# zeal:
data modify storage cffect:data definition.sixcombat.enchantment.melee.zeal.start set value "function sixcombat:_/player/ench/zeal/cffect/start"
data modify storage cffect:data definition.sixcombat.enchantment.melee.zeal.end set value "function sixcombat:_/player/ench/zeal/cffect/end"
data modify storage cffect:data definition.sixcombat.enchantment.melee.zeal.duplicate_handler set value "function sixcombat:_/player/ench/zeal/cffect/duplicate"

# momentum:
data modify storage cffect:data definition.sixcombat.enchantment.melee.momentum.attacker.start set value "function sixcombat:_/player/ench/momentum/cffect/attacker/start"
data modify storage cffect:data definition.sixcombat.enchantment.melee.momentum.attacker.end set value "function sixcombat:_/player/ench/momentum/cffect/attacker/end"
data modify storage cffect:data definition.sixcombat.enchantment.melee.momentum.attacker.duplicate_handler set value "function sixcombat:_/player/ench/momentum/cffect/attacker/duplicate"

data modify storage cffect:data definition.sixcombat.enchantment.melee.momentum.victim.start set value "function sixcombat:_/player/ench/momentum/cffect/victim/start"
data modify storage cffect:data definition.sixcombat.enchantment.melee.momentum.victim.end set value "function sixcombat:_/player/ench/momentum/cffect/victim/end"
data modify storage cffect:data definition.sixcombat.enchantment.melee.momentum.victim.duplicate_handler set value "function sixcombat:_/player/ench/momentum/cffect/victim/duplicate"