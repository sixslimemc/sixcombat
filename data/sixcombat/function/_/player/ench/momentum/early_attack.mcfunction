#> sixcombat:_/player/ench/momentum/on_attack
#--------------------
# _/adv/player_attack
#--------------------
# ~ called when a player attacks with (attacker) momentum cffect.
# ~ called before trigger

data modify storage cffect:in remove set value {id:"sixcombat.enchantment.melee.momentum.attacker"}
function cffect:remove
