#> mindfulp-weapons:_/ench/arcana/on_victim
#--------------------
# @enchantment : melee/arcana
#--------------------

# calculate damage:
execute store result score *x _mindfulp-weapons run data get entity @s SelectedItem.components."minecraft:enchantments"."mindfulp-weapons:melee/arcana"
# per-level damage x10
scoreboard players set *y _mindfulp-weapons 15
scoreboard players operation *x _mindfulp-weapons *= *y _mindfulp-weapons
# base damage x10
scoreboard players add *x _mindfulp-weapons 10

execute store result storage mindfulp-weapons:_ x.damage float 0.1 run scoreboard players get *x _mindfulp-weapons