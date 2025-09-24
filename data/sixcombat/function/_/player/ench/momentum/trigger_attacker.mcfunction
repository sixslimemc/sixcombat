#> sixcombat:_/player/ench/momentum/trigger_attacker
#--------------------
# @ench : melee/momentum
#--------------------
# ~ called before victim.

execute store result score *momentum.level _sixcombat run data get entity @s SelectedItem.components."minecraft:enchantments"."sixcombat:melee/momentum"

data modify storage cffect:in give set value {id:"sixcombat.enchantment.melee.momentum.attacker"}
data modify storage cffect:in give.duration set value 35
execute store result storage cffect:in give.data.level int 1 run scoreboard players get *momentum.level _sixcombat
function cffect:give

playsound minecraft:entity.iron_golem.attack player @a ~ ~ ~ 0.8 0.52