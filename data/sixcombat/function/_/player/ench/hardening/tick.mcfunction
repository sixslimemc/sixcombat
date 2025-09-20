#> sixcombat:_/player/ench/hardening/tick
#--------------------
# _/player/main
#--------------------
scoreboard players remove @s sixcombat.hardening_timer 1

execute if score @s sixcombat.hardening_timer matches 0 run function sixcombat:_/player/ench/hardening/reset