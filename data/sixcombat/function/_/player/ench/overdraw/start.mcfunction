#> sixcombat:_/player/ench/overdraw/start
#--------------------
# ./drawing
#--------------------

scoreboard players set @s _sixcombat.overdraw_level 0
scoreboard players set @s _sixcombat.overdraw_time 0
# will subtract 22 upon first increment
scoreboard players set @s _sixcombat.overdraw_threshold 35
tag @s add _sixcombat.overdrawing

execute if items entity @s weapon.mainhand #sixcombat:enchantable/ranged/overdraw run data modify storage sixcombat:_ var.overdraw.item set from entity @s SelectedItem
execute unless data storage sixcombat:_ var.overdraw.item run data modify storage sixcombat:_ var.overdraw.item set from entity @s equipment.offhand

execute store result score @s _sixcombat.overdraw_ench run data get storage sixcombat:_ var.overdraw.item.components."minecraft:enchantments"."sixcombat:ranged/overdraw"

data remove storage sixcombat:_ var.overdraw.item

# DEBUG:
tellraw @a ["overdraw level:", {'score':{'name':'@s', 'objective':'_sixcombat.overdraw_ench'}}]