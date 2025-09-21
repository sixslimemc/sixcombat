#> sixcombat:_/player/ench/arcana/trigger_victim
#--------------------
# @ench : melee/arcana
#--------------------

# get damage:
scoreboard players set *x _sixcombat 15
scoreboard players operation *x _sixcombat *= *arcana.level _sixcombat
scoreboard players add *x _sixcombat 5

playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 0.35 1.64
execute store result storage sixcombat:_ x.damage float 0.1 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/arcana/deal_damage with storage sixcombat:_ x