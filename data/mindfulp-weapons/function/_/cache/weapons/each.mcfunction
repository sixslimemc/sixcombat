#> mindfulp-weapons:_/cache/weapons/each
#--------------------
# ../main
#--------------------

data modify storage mindfulp-weapons:_ var.cache.this_weapon set from storage mindfulp-weapons:_ var.cache.weapons[-1]

data modify storage mindfulp-weapons:_ var.cache.entry set value {attributes:[], components:{"minecraft:weapon":{item_damage_per_attack:1}}}

# damage:
data modify storage mindfulp-weapons:_ var.cache.entry.attributes append value {type:"minecraft:attack_damage", slot:"mainhand",id:"mindfulp-weapons:item", operation:"add_value",display:{type:"default"}}
data modify storage mindfulp-weapons:_ var.cache.entry.attributes[-1].amount set from storage mindfulp-weapons:_ var.cache.this_weapon.damage

# attack speed:
data modify storage mindfulp-weapons:_ var.cache.entry.attributes append value {type:"minecraft:attack_speed", slot:"mainhand",id:"mindfulp-weapons:item", operation:"add_multiplied_base",display:{type:"default"}}

execute store result score *x _mindfulp-weapons run data get storage mindfulp-weapons:_ var.cache.this_weapon.attack_speed 10000
scoreboard players operation *x _mindfulp-weapons /= *4 _mindfulp-weapons
scoreboard players remove *x _mindfulp-weapons 10000
execute store result storage mindfulp-weapons:_ var.cache.entry.attributes[-1].amount float 0.0001 run scoreboard players get *x _mindfulp-weapons

# knockback:
data modify storage mindfulp-weapons:_ var.cache.entry.attributes append value {type:"minecraft:attack_knockback", slot:"mainhand",id:"mindfulp-weapons:item", operation:"add_value",display:{type:"default"}}
data modify storage mindfulp-weapons:_ var.cache.entry.attributes[-1].amount set from storage mindfulp-weapons:_ var.cache.this_weapon.knockback
execute if data storage mindfulp-weapons:_ var.cache.this_weapon{knockback:0f} run data remove storage mindfulp-weapons:_ var.cache.entry.attributes[-1]

# range:
data modify storage mindfulp-weapons:_ var.cache.entry.attributes append value {type:"minecraft:entity_interaction_range", slot:"mainhand",id:"mindfulp-weapons:item", operation:"add_multiplied_base",display:{type:"default"}}
data modify storage mindfulp-weapons:_ var.cache.entry.attributes[-1].amount set from storage mindfulp-weapons:_ var.cache.this_weapon.range_modifier
execute if data storage mindfulp-weapons:_ var.cache.this_weapon{range_modifier:0f} run data remove storage mindfulp-weapons:_ var.cache.entry.attributes[-1]

# disable block:
data modify storage mindfulp-weapons:_ var.cache.entry.components."minecraft:weapon".disable_blocking_for_seconds set from storage mindfulp-weapons:_ var.cache.this_weapon.disable_block_seconds

# blocks attacks:
data modify storage mindfulp-weapons:_ x.bdata set from storage mindfulp-weapons:_ var.cache.this_weapon.blocks_attacks
data modify storage mindfulp-weapons:_ x.bcomp set value {damage_reductions:[{}], bypassed_by:"#mindfulp-weapons:bypasses_sword_block", item_damage:{threshold:1f, base:0f}}
data modify storage mindfulp-weapons:_ x.bcomp.block_delay_seconds set from storage mindfulp-weapons:_ x.bdata.delay
data modify storage mindfulp-weapons:_ x.bcomp.disable_cooldown_scale set from storage mindfulp-weapons:_ x.bdata.disable_cooldown_scale
data modify storage mindfulp-weapons:_ x.bcomp.damage_reductions[0].base set from storage mindfulp-weapons:_ x.bdata.damage_reduction.base
data modify storage mindfulp-weapons:_ x.bcomp.damage_reductions[0].factor set from storage mindfulp-weapons:_ x.bdata.damage_reduction.percent
data modify storage mindfulp-weapons:_ x.bcomp.item_damage.factor set from storage mindfulp-weapons:_ x.bdata.damage_reduction.percent
execute if data storage mindfulp-weapons:_ x.bdata.sound.on_block unless data storage mindfulp-weapons:_ x.bdata.sound{on_block:false} run data modify storage mindfulp-weapons:_ x.bcomp.block_sound set from storage mindfulp-weapons:_ x.bdata.sound.on_block
execute if data storage mindfulp-weapons:_ x.bdata.sound.on_disable unless data storage mindfulp-weapons:_ x.bdata.sound{on_disable:false} run data modify storage mindfulp-weapons:_ x.bcomp.disable_sound set from storage mindfulp-weapons:_ x.bdata.sound.on_disable

execute unless data storage mindfulp-weapons:_ var.cache.this_weapon{blocks_attacks:false} run data modify storage mindfulp-weapons:_ var.cache.entry.components."minecraft:blocks_attacks" set from storage mindfulp-weapons:_ x.bcomp

# add to map:
data merge storage mindfulp-weapons:_ {x:{mline:{1:"data modify storage mindfulp-weapons:_ cache.items.'", 2:true, 3:"' set from storage mindfulp-weapons:_ var.cache.entry"}}}
data modify storage mindfulp-weapons:_ x.mline.2 set from storage mindfulp-weapons:_ var.cache.this_weapon.item
function six:-/mline/3 with storage mindfulp-weapons:_ x.mline

data remove storage mindfulp-weapons:_ var.cache.weapons[-1]
execute if data storage mindfulp-weapons:_ var.cache.weapons[0] run function mindfulp-weapons:_/cache/weapons/each