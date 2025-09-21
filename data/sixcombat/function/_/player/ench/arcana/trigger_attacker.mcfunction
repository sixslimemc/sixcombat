#> sixcombat:_/player/ench/arcana/trigger_attacker
#--------------------
# @ench : melee/arcana
#--------------------

execute store result score *arcana.level _sixcombat run data get entity @s SelectedItem.components."minecraft:enchantments"."sixcombat:melee/arcana"

tag @s add _sixcombat.arcana_attacker

# data carries over to './trigger_victim'