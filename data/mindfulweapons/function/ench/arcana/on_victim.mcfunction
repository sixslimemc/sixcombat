#> mindfulweapons:_/ench/arcana/on_victim
#--------------------
# @enchantment : melee/arcana
#--------------------

# calculate damage:
execute store result score *x _mindfulweapons run data get entity @s SelectedItem.components."minecraft:enchantments"."mindfulweapons:melee/arcana"
# per-level damage x10
scoreboard players set *y _mindfulweapons 15
scoreboard players operation *x _mindfulweapons *= *y _mindfulweapons
# base damage x10
scoreboard players add *x _mindfulweapons 10

execute store result storage mindfulweapons:_ x.damage float 0.1 run scoreboard players get *x _mindfulweapons