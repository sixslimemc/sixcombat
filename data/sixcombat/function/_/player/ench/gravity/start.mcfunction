#> sixcombat:_/player/erch/gravity/start
#--------------------
# ./tick
#--------------------
tag @s add _sixcombat.gravity_active

# get level:
scoreboard players set *x _sixcombat 0
data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.head.components."minecraft:enchantments"."sixcombat:armor/gravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.chest.components."minecraft:enchantments"."sixcombat:armor/gravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.legs.components."minecraft:enchantments"."sixcombat:armor/gravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.feet.components."minecraft:enchantments"."sixcombat:armor/gravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
scoreboard players operation *z _sixcombat = *x _sixcombat

# get gravity potency:
scoreboard players set *y _sixcombat 20
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 10
execute store result storage sixcombat:_ x.gv_potency double 0.01 run scoreboard players get *x _sixcombat

scoreboard players operation *x _sixcombat = *z _sixcombat
scoreboard players set *y _sixcombat 4
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 1
execute store result storage sixcombat:_ x.js_potency double 0.01 run scoreboard players get *x _sixcombat

function sixcombat:_/player/ench/gravity/apply_modifier with storage sixcombat:_ x