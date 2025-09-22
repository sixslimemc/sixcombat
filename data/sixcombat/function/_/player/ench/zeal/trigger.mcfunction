#> sixcombat:_/player/ench/zeal/trigger
#--------------------
# @ench : melee/zeal
#--------------------

execute store result score *zeal.level _sixcombat run data get entity @s SelectedItem.components."minecraft:enchantments"."sixcombat:melee/zeal"

data modify storage cffect:in give set value {id:"sixcombat.enchantment.melee.zeal", data:{stacks:1}}

execute store result storage cffect:in give.data.level int 1 run scoreboard players get *zeal.level _sixcombat

scoreboard players set *x _sixcombat 5
scoreboard players operation *x _sixcombat *= *zeal.level _sixcombat
scoreboard players add *x _sixcombat 40
execute store result storage cffect:in give.duration int 1 run scoreboard players get *x _sixcombat

function cffect:give

scoreboard players reset *zeal.level _sixcombat