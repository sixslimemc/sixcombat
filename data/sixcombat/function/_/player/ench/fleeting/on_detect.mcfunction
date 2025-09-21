#> sixcombat:_/player/ench/fleeting/on_detect
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.fleeting_trigger

# get level:
scoreboard players set *fleeting.level _sixcombat 0
data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *x _sixcombat run data get storage sixcombat:_ x.equipment.head.components."minecraft:enchantments"."sixcombat:armor/fleeting"
scoreboard players operation *fleeting.level _sixcombat += *x _sixcombat

data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *x _sixcombat run data get storage sixcombat:_ x.equipment.chest.components."minecraft:enchantments"."sixcombat:armor/fleeting"
scoreboard players operation *fleeting.level _sixcombat += *x _sixcombat

data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *x _sixcombat run data get storage sixcombat:_ x.equipment.legs.components."minecraft:enchantments"."sixcombat:armor/fleeting"
scoreboard players operation *fleeting.level _sixcombat += *x _sixcombat

data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *x _sixcombat run data get storage sixcombat:_ x.equipment.feet.components."minecraft:enchantments"."sixcombat:armor/fleeting"
scoreboard players operation *fleeting.level _sixcombat += *x _sixcombat


data modify storage cffect:in give set value {id:"sixcombat.enchantment.armor.fleeting", data:{this_segment:2}}

scoreboard players operation *x _sixcombat = *fleeting.level _sixcombat
scoreboard players set *y _sixcombat 3
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 10
execute store result storage cffect:in give.data.segment_duration int 1 run scoreboard players get *x _sixcombat
data modify storage cffect:in give.duration set from storage cffect:in give.data.segment_duration

scoreboard players operation *x _sixcombat = *fleeting.level _sixcombat
scoreboard players set *y _sixcombat 15
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 20
# 0.005 because 0.01 (float scale) / 2 (amount of segments)
execute store result storage cffect:in give.data.segment_potency float 0.005 run scoreboard players get *x _sixcombat

function cffect:give

scoreboard players reset *fleeting.level _sixcombat

