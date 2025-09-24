#> sixcombat:_/adv/player_attack
#--------------------
# @adv : _/player_attack
#--------------------

advancement revoke @s only sixcombat:_/player_attack

execute if entity @s[tag=_sixcombat.momentum_attacker_affected] run function sixcombat:_/player/ench/momentum/early_attack
