#> sixcombat:_/ench/arcana/on_victim
#--------------------
# @enchantment : melee/arcana
#--------------------

# calculate damage:
execute store result score *x _sixcombat run data get entity @s SelectedItem.components."minecraft:enchantments"."sixcombat:melee/arcana"
# per-level damage x10
scoreboard players set *y _sixcombat 15
scoreboard players operation *x _sixcombat *= *y _sixcombat
# base damage x10
scoreboard players add *x _sixcombat 10

execute store result storage sixcombat:_ x.damage float 0.1 run scoreboard players get *x _sixcombat