#> sixcombat:_/player/ench/momentum/cffect/attacker/start
#--------------------
# @cffect:start : sixcombat.enchantment.melee.momentum.attacker
#--------------------
tag @s add _sixcombat.momentum_attacker_affected

attribute @s minecraft:attack_speed modifier remove sixcombat:enchantment/momentum/attacker

execute store result score *x _sixcombat run data get storage cffect:api this[0].instance.data.level
scoreboard players set *y _sixcombat 20
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 10
execute store result storage sixcombat:_ x.potency float 0.01 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/momentum/cffect/attacker/apply_modifier with storage sixcombat:_ x