#> sixcombat:_/player/erch/potion_affinity/check/do
#--------------------
# ../tick
#--------------------
scoreboard players set @s _sixcombat.potion_affinity_ticks 0

# *x = level:
scoreboard players set *x _sixcombat 0
data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.head.components."minecraft:enchantments"."sixcombat:armor/potion_affinity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.chest.components."minecraft:enchantments"."sixcombat:armor/potion_affinity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.legs.components."minecraft:enchantments"."sixcombat:armor/potion_affinity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.feet.components."minecraft:enchantments"."sixcombat:armor/potion_affinity"
scoreboard players operation *x _sixcombat += *y _sixcombat

# *x = percent addition:
scoreboard players set *y _sixcombat 50
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 0

# *x = x/1000 per second:
scoreboard players add *x _sixcombat 100
scoreboard players set *y _sixcombat 100000
scoreboard players operation *y _sixcombat /= *x _sixcombat
scoreboard players set *x _sixcombat 1000
scoreboard players operation *x _sixcombat -= *y _sixcombat

# limit *x so effects dont last forever:
execute if score *x _sixcombat matches 1000.. run scoreboard players set *x _sixcombat 999

# add to value:
scoreboard players operation @s _sixcombat.potion_affinity_value += *x _sixcombat

# add duration if value >= 1000
execute if score @s _sixcombat.potion_affinity_value matches 1000.. run function sixcombat:_/player/ench/potion_affinity/check/add

data remove storage sixcombat:_ var.potion_affinity