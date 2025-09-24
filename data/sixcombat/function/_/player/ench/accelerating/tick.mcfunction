#> sixcombat:_/player/erch/accelerating/tick
#--------------------
# _/player/main
#--------------------
tag @s remove _sixcombat.accelerating_tick
tag @s add _sixcombat.accelerating_active

# reset if attacked:
execute if entity @s[tag=_sixcombat.accelerating_attack] run return run function sixcombat:_/player/ench/accelerating/reset

# DEV / OPTIMIZE:
# consider moving the calculations to an init function that only runs when the player just starts sprinting.

# get *level:
scoreboard players set *x _sixcombat 0
data modify storage sixcombat:_ x.equipment set from entity @s equipment
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.head.components."minecraft:enchantments"."sixcombat:armor/accelerating"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.chest.components."minecraft:enchantments"."sixcombat:armor/accelerating"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.legs.components."minecraft:enchantments"."sixcombat:armor/accelerating"
scoreboard players operation *x _sixcombat += *y _sixcombat
execute store result score *y _sixcombat run data get storage sixcombat:_ x.equipment.feet.components."minecraft:enchantments"."sixcombat:armor/accelerating"
scoreboard players operation *x _sixcombat += *y _sixcombat
scoreboard players operation *accelerating.level _sixcombat = *x _sixcombat

# get *max_stacks:
scoreboard players set *y _sixcombat 3
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 2
scoreboard players operation *accelerating.max_stacks _sixcombat = *x _sixcombat

# return if at max stacks:
execute if score @s sixcombat.accelerating_stacks = *accelerating.max_stacks _sixcombat run return 0

# return and re-realize if above max stacks:
execute if score @s sixcombat.accelerating_stacks > *accelerating.max_stacks _sixcombat run return run function sixcombat:_/player/ench/accelerating/realize_stacks

# get *threshold (ticks per stack):
scoreboard players operation *x _sixcombat = *accelerating.level _sixcombat
scoreboard players set *y _sixcombat -2
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 32
scoreboard players operation *accelerating.threshold _sixcombat = *x _sixcombat

# increment ticks:
scoreboard players add @s sixcombat.accelerating_ticks 1

# increment stacks if above threshold:
execute if score @s sixcombat.accelerating_ticks >= *accelerating.threshold _sixcombat run function sixcombat:_/player/ench/accelerating/increment