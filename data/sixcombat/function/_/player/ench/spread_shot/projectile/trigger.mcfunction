#> sixcombat:_/player/ench/spread_shot/projectile/trigger
#--------------------
# @ench : ranged/spread_shot
#--------------------

data remove storage sixcombat:_ var.spread_shot

execute if entity @s[type=#minecraft:arrows] run return run function sixcombat:_/player/ench/spread_shot/projectile/arrow/main
execute if entity @s[type=firework_rocket] run return run function sixcombat:_/player/ench/spread_shot/projectile/firework/main