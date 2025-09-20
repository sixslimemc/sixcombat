#> sixcombat:_/systems/arrow/check
#--------------------
# _/tick
#--------------------
tag @s add _sixcombat.checked

execute on origin unless entity @s[type=player] run return 0

data merge entity @s {crit:false}

# echo shot:
execute if score @s _sixcombat.echo_shot_starter matches 1.. run function sixcombat:_/player/ench/echo_shot/projectile/arrow/on_check

data modify storage sixcombat:_ var.arrow.data set from entity @s

scoreboard players set *arrow.is_new _sixcombat 0
execute unless entity @s[type=arrow] if items entity @s container.0 minecraft:arrow summon arrow run function sixcombat:_/systems/arrow/init_new
execute unless entity @s[type=arrow] if items entity @s container.0 minecraft:tipped_arrow summon arrow run function sixcombat:_/systems/arrow/init_new
execute unless entity @s[type=spectral_arrow] if items entity @s container.0 minecraft:spectral_arrow summon spectral_arrow run function sixcombat:_/systems/arrow/init_new

execute if score *arrow.is_new _sixcombat matches 1 run kill @s

scoreboard players reset *arrow.is_new _sixcombat