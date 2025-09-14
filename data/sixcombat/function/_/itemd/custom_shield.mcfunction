#> sixcombat/_/itemd/custom_shield
#--------------------
# ./shield
#--------------------


data modify storage sixcombat:_ var.itemd.modified.components."minecraft:max_damage" set from storage sixcombat:_ var.itemd.durability

# movement speed:
data modify storage sixcombat:_ var.itemd.modified.attributes append value {type:"minecraft:movement_speed", slot:"hand",id:"sixcombat:shield_equipped", operation:"add_multiplied_base",display:{type:"default"}}
data modify storage sixcombat:_ var.itemd.modified.attributes[-1].amount set from storage sixcombat:_ var.itemd.this_type.custom.movement_speed_modifier
execute if data storage sixcombat:_ var.itemd.this_type.custom{movement_speed_modifier:0f} run data remove storage sixcombat:_ var.itemd.modified.attributes[-1]

# additional attributes:
data modify storage sixcombat:_ x.attrs set from storage sixcombat:_ var.itemd.this_type.custom.additional_modifiers
execute if data storage sixcombat:_ x.attrs[0] run data modify storage sixcombat:_ x.attrs[] merge value {slot:"hand", display:{type:"default"}, id:"sixcombat:shield_equipped_additional"}
data modify storage sixcombat:_ var.itemd.modified.attributes append from storage sixcombat:_ x.attrs[]

# blocking
data modify storage sixcombat:_ util.in.blocking.config set from storage sixcombat:_ var.itemd.this_type.custom.block
function sixcombat:_/util/eval/blocking/main
data modify storage sixcombat:_ var.itemd.modified.components."minecraft:blocks_attacks" set from storage sixcombat:_ util.out.blocking.component
data modify storage sixcombat:_ var.itemd.modified.components."minecraft:custom_data".sixcombat._.blocking_data set from storage sixcombat:_ util.out.blocking.blocking_data
data modify storage sixcombat:_ var.itemd.modified.lore append from storage sixcombat:_ util.out.blocking.lore[]