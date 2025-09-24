#> sixcombat:_/player/erch/luminescent/tick
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.luminescent_tick

execute unless entity @s[tag=_sixcombat.luminescent_active] run function sixcombat:_/player/ench/luminescent/init

# DEV / OPTIMIZE
# ~ consider getting the level only every x ticks instead of every tick.

# get level:
scoreboard players set *x _sixcombat 0
data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.head.components."minecraft:enchantments"."sixcombat:armor/luminescent"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.chest.components."minecraft:enchantments"."sixcombat:armor/luminescent"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.legs.components."minecraft:enchantments"."sixcombat:armor/luminescent"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.feet.components."minecraft:enchantments"."sixcombat:armor/luminescent"
scoreboard players operation *x _sixcombat += *y _sixcombat

# get brightness:
scoreboard players set *y _sixcombat 4
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 3
scoreboard players operation *luminescent.brightness _sixcombat = *x _sixcombat

execute store result storage sixcombat:_ x.id int 1 run scoreboard players get @s pdata.index
function sixcombat:_/player/ench/luminescent/call_proxy with storage sixcombat:_ x

scoreboard players reset *luminescent.brightness _sixcombat
scoreboard players reset *luminescent.id _sixcombat