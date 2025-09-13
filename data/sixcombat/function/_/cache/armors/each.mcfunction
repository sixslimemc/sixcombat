#> sixcombat:_/cache/armors/each
#--------------------
# ../main
#--------------------

data modify storage sixcombat:_ var.cache.this_armor set from storage sixcombat:_ var.cache.armors[-1]

data modify storage sixcombat:_ var.cache.armor_attributes set value []
# armor:
data modify storage sixcombat:_ var.cache.armor_attributes append value {type:"minecraft:armor", operation:"add_value",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.armor_attributes[-1].amount set from storage sixcombat:_ var.cache.this_armor.armor

# armor toughness:
data modify storage sixcombat:_ var.cache.armor_attributes append value {type:"minecraft:armor_toughness",operation:"add_value",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.armor_attributes[-1].amount set from storage sixcombat:_ var.cache.this_armor.armor_toughness

# movement speed:
data modify storage sixcombat:_ var.cache.armor_attributes append value {type:"minecraft:movement_speed", operation:"add_multiplied_base",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.armor_attributes[-1].amount set from storage sixcombat:_ var.cache.this_armor.movement_speed_modifier

# knockback resist:
data modify storage sixcombat:_ var.cache.armor_attributes append value {type:"minecraft:knockback_resistance", operation:"add_value",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.armor_attributes[-1].amount set from storage sixcombat:_ var.cache.this_armor.knockback_resist

# additional attributes:
data modify storage sixcombat:_ x.attrs set from storage sixcombat:_ var.cache.this_armor.additional_modifiers
execute if data storage sixcombat:_ x.attrs[0] run data modify storage sixcombat:_ x.attrs[] merge value {display:{type:"default"}, id:"sixcombat:armor_additional"}
data modify storage sixcombat:_ var.cache.armor_attributes append from storage sixcombat:_ x.attrs[]

# finalize attribute objects:
data modify storage sixcombat:_ var.cache.armor_attributes[].slot set from storage sixcombat:_ var.cache.this_armor.slot
data merge storage sixcombat:_ {x:{1:"data modify storage sixcombat:_ var.cache.armor_attributes[].id set value 'sixcombat:armor/", 2:true, 3:"'"}}
data modify storage sixcombat:_ x.2 set from storage sixcombat:_ var.cache.this_armor.slot
function six:-/mline/3 with storage sixcombat:_ x

# set entry:
data remove storage sixcombat:_ var.cache.entry
data merge storage sixcombat:_ {x:{1:"data modify storage sixcombat:_ var.cache.entry set from storage sixcombat:_ cache.items.'", 2:true, 3:"'"}}
data modify storage sixcombat:_ x.2 set from storage sixcombat:_ var.cache.this_armor.item
function six:-/mline/3 with storage sixcombat:_ x
execute unless data storage sixcombat:_ var.cache.entry run data modify storage sixcombat:_ var.cache.entry set value {attributes:[]}
data modify storage sixcombat:_ var.cache.entry.attributes append from storage sixcombat:_ var.cache.armor_attributes[]

# add to map:
data merge storage sixcombat:_ {x:{1:"data modify storage sixcombat:_ cache.items.'", 2:true, 3:"' set from storage sixcombat:_ var.cache.entry"}}
data modify storage sixcombat:_ x.2 set from storage sixcombat:_ var.cache.this_armor.item
function six:-/mline/3 with storage sixcombat:_ x

data remove storage sixcombat:_ var.cache.armors[-1]
execute if data storage sixcombat:_ var.cache.armors[0] run function sixcombat:_/cache/armors/each