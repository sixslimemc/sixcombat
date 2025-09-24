#> sixcombat:_/player/erch/accelerating/tick
#--------------------
# _/player/main
# _/adv/player_attack
#--------------------
tag @s remove _sixcombat.accelerating_active
tag @s remove _sixcombat.accelerating_attack

scoreboard players reset @s sixcombat.accelerating_stacks
scoreboard players reset @s sixcombat.accelerating_ticks

attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/armor/accelerating
attribute @s minecraft:attack_knockback modifier remove sixcombat:enchantment/armor/accelerating