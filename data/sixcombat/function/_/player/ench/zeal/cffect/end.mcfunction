#> sixcombat:_/player/ench/zeal/cffect/end
#--------------------
# @cffect:end : sixcombat.enchantment.melee.zeal  
#--------------------

execute store result score *x _sixcombat run data get storage cffect:api this[0].instance.data.stacks

execute if score *x _sixcombat matches ..1 run return run attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/melee/zeal

data modify storage cffect:in give set value {id:"sixcombat.enchantment.melee.zeal", duration:6}
data modify storage cffect:in give.data set from storage cffect:api this[0].instance.data
scoreboard players remove *x _sixcombat 1
execute store result storage cffect:in give.data.stacks int 1 run scoreboard players get *x _sixcombat
function cffect:give


