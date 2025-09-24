#> sixcombat:_/player/erch/accelerating/realize_stacks
#--------------------
# ./tick
# ./increment
#--------------------

# movespeed:
scoreboard players operation *x _sixcombat = @s sixcombat.accelerating_stacks
scoreboard players set *y _sixcombat 5
scoreboard players operation *x _sixcombat *= *y _sixcombat
execute store result storage sixcombat:_ x.ms_potency float 0.01 run scoreboard players get *x _sixcombat

# knockback:
scoreboard players operation *x _sixcombat = @s sixcombat.accelerating_stacks
scoreboard players set *y _sixcombat 3
scoreboard players operation *x _sixcombat *= *y _sixcombat
execute store result storage sixcombat:_ x.kb_potency float 0.1 run scoreboard players get *x _sixcombat

attribute @s minecraft:movement_speed modifier remove sixcombat:enchantment/armor/accelerating
attribute @s minecraft:attack_knockback modifier remove sixcombat:enchantment/armor/accelerating

function sixcombat:_/player/ench/accelerating/apply_modifier with storage sixcombat:_ x