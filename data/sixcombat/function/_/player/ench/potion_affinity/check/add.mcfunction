#> sixcombat:_/player/erch/potion_affinity/check/add
#--------------------
# ./do
#--------------------

scoreboard players operation *potion_affinity.add_seconds _sixcombat = @s _sixcombat.potion_affinity_value
scoreboard players operation *potion_affinity.add_seconds _sixcombat /= *1000 _sixcombat

data remove storage sixcombat:_ var.potion_affinity.effects
data modify storage sixcombat:_ var.potion_affinity.effects set from entity @s active_effects
execute if data storage sixcombat:_ var.potion_affinity.effects[0] run function sixcombat:_/player/ench/potion_affinity/check/each


scoreboard players operation @s _sixcombat.potion_affinity_value %= *1000 _sixcombat

scoreboard players reset *potion_affinity.add_seconds