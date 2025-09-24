#> sixcombat:_/player/ench/momentum/cffect/attacker/victim/start
#--------------------
# @cffect:start : sixcombat.enchantment.melee.momentum.victim
#--------------------

attribute @s minecraft:entity_interaction_range modifier remove sixcombat:enchantment/momentum/victim
attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/momentum/victim

execute store result score *x _sixcombat run data get storage cffect:api this[0].instance.data.level
scoreboard players set *y _sixcombat -10
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players remove *x _sixcombat 5
execute store result storage sixcombat:_ x.potency float 0.01 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/momentum/cffect/victim/apply_modifier with storage sixcombat:_ x