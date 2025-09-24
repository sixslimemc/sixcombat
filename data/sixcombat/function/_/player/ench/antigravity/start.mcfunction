#> sixcombat:_/player/erch/antigravity/start
#--------------------
# ./tick
#--------------------
tag @s add _sixcombat.antigravity_active

# get level:
scoreboard players set *x _sixcombat 0
data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.head.components."minecraft:enchantments"."sixcombat:armor/antigravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.chest.components."minecraft:enchantments"."sixcombat:armor/antigravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.legs.components."minecraft:enchantments"."sixcombat:armor/antigravity"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.feet.components."minecraft:enchantments"."sixcombat:armor/antigravity"
scoreboard players operation *x _sixcombat += *y _sixcombat

# get potency:
scoreboard players set *y _sixcombat 20
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 35
execute if score *x _sixcombat matches 100.. run scoreboard players set *x _sixcombat 98

execute store result storage sixcombat:_ x.potency double -0.01 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/antigravity/apply_modifier with storage sixcombat:_ x