#> sixcombat:_/player/ench/zeal/cffect/start
#--------------------
# @cffect:start : sixcombat.enchantment.melee.zeal  
#--------------------

attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/melee/zeal

# get total movement speed mod:
execute store result score *x _sixcombat run data get storage cffect:api this[0].instance.data.level
scoreboard players set *y _sixcombat 2
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 5
execute store result score *y _sixcombat run data get storage cffect:api this[0].instance.data.stacks
scoreboard players operation *x _sixcombat *= *y _sixcombat

execute store result storage sixcombat:_ x.potency float 0.01 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/zeal/cffect/apply_modifier with storage sixcombat:_ x