#> sixcombat:_/systems/arrow/check
#--------------------
# _/tick
#--------------------
tag @s add _sixcombat.checked

execute on origin unless entity @s[type=player] run return 0
data merge entity @s {crit:false}
