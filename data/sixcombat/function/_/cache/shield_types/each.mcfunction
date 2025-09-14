#> sixcombat:_/cache/shield_types/each
#--------------------
# ../main
#--------------------

data modify storage sixcombat:_ var.cache.this_type set from storage sixcombat:_ var.cache.shield_types[-1]
data merge storage sixcombat:_ {x:{1:"data modify storage sixcombat:_ var.cache.this_shield set from storage sixcombat:_ var.cache.shields.'", 2:true, 3:"'"}}
data modify storage sixcombat:_ x.2 set from storage sixcombat:_ var.cache.this_type
function six:-/mline/3 with storage sixcombat:_ x

data modify storage sixcombat:_ var.cache.entry set value {components:{}, lore:[], attributes:[]}

data modify storage sixcombat:_ var.cache.entry.components."minecraft:max_damage" set from storage sixcombat:_ var.cache.this_shield.durability

# movement speed:
data modify storage sixcombat:_ var.cache.entry.attributes append value {type:"minecraft:movement_speed", slot:"hand",id:"sixcombat:shield_equipped", operation:"add_multiplied_base",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.entry.attributes[-1].amount set from storage sixcombat:_ var.cache.this_shield.movement_speed_modifier
execute if data storage sixcombat:_ var.cache.this_shield{movement_speed_modifier:0f} run data remove storage sixcombat:_ var.cache.entry.attributes[-1]

# additional attributes:
data modify storage sixcombat:_ x.attrs set from storage sixcombat:_ var.cache.this_shield.additional_modifiers
execute if data storage sixcombat:_ x.attrs[0] run data modify storage sixcombat:_ x.attrs[] merge value {slot:"hand", display:{type:"default"}, id:"sixcombat:shield_equipped_additional"}
data modify storage sixcombat:_ var.cache.entry.attributes append from storage sixcombat:_ x.attrs[]

# blocking
data modify storage sixcombat:_ util.in.blocking.config set from storage sixcombat:_ var.cache.this_shield.block
function sixcombat:_/util/eval/blocking/main
data modify storage sixcombat:_ var.cache.entry.components."minecraft:blocks_attacks" set from storage sixcombat:_ util.out.blocking.component
data modify storage sixcombat:_ var.cache.entry.components."minecraft:custom_data".sixcombat._.blocking_data set from storage sixcombat:_ util.out.blocking.blocking_data
data modify storage sixcombat:_ var.cache.entry.lore append from storage sixcombat:_ util.out.blocking.lore[]

# add to map:
data merge storage sixcombat:_ {x:{1:"data modify storage sixcombat:_ cache.shields.'", 2:true, 3:"' set from storage sixcombat:_ var.cache.entry"}}
data modify storage sixcombat:_ x.2 set from storage sixcombat:_ var.cache.this_type
function six:-/mline/3 with storage sixcombat:_ x

data remove storage sixcombat:_ var.cache.shield_types[-1]
execute if data storage sixcombat:_ var.cache.shield_types[0] run function sixcombat:_/cache/shield_types/each