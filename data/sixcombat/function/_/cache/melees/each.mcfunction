#> sixcombat:_/cache/weapons/each
#--------------------
# ../main
#--------------------

data modify storage sixcombat:_ var.cache.this_melee set from storage sixcombat:_ var.cache.melees[-1]

data modify storage sixcombat:_ var.cache.entry set value {attributes:[], components:{"minecraft:weapon":{item_damage_per_attack:1}}}

# damage:
data modify storage sixcombat:_ var.cache.entry.attributes append value {type:"minecraft:attack_damage", slot:"mainhand",id:"sixcombat:item", operation:"add_value",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.entry.attributes[-1].amount set from storage sixcombat:_ var.cache.this_melee.damage

# attack speed:
data modify storage sixcombat:_ var.cache.entry.attributes append value {type:"minecraft:attack_speed", slot:"mainhand",id:"sixcombat:item", operation:"add_multiplied_base",display:{type:"default"}}

execute store result score *x _sixcombat run data get storage sixcombat:_ var.cache.this_melee.attack_speed 10000
scoreboard players operation *x _sixcombat /= *4 _sixcombat
scoreboard players remove *x _sixcombat 10000
execute store result storage sixcombat:_ var.cache.entry.attributes[-1].amount float 0.0001 run scoreboard players get *x _sixcombat

# knockback:
data modify storage sixcombat:_ var.cache.entry.attributes append value {type:"minecraft:attack_knockback", slot:"mainhand",id:"sixcombat:item", operation:"add_value",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.entry.attributes[-1].amount set from storage sixcombat:_ var.cache.this_melee.knockback
execute if data storage sixcombat:_ var.cache.this_melee{knockback:0f} run data remove storage sixcombat:_ var.cache.entry.attributes[-1]

# range:
data modify storage sixcombat:_ var.cache.entry.attributes append value {type:"minecraft:entity_interaction_range", slot:"mainhand",id:"sixcombat:item", operation:"add_multiplied_base",display:{type:"default"}}
data modify storage sixcombat:_ var.cache.entry.attributes[-1].amount set from storage sixcombat:_ var.cache.this_melee.range_modifier
execute if data storage sixcombat:_ var.cache.this_melee{range_modifier:0f} run data remove storage sixcombat:_ var.cache.entry.attributes[-1]

# disable block:
data modify storage sixcombat:_ var.cache.entry.components."minecraft:weapon".disable_blocking_for_seconds set from storage sixcombat:_ var.cache.this_melee.disable_block_seconds

# blocks attacks:
data modify storage sixcombat:_ x.bdata set from storage sixcombat:_ var.cache.this_melee.blocks_attacks
data modify storage sixcombat:_ x.bcomp set value {damage_reductions:[{}], bypassed_by:"#sixcombat:bypasses_sword_block", item_damage:{threshold:1f, base:0f}, block_sound:"minecraft:entity.player.hurt", disable_sound:"minecraft:entity.player.hurt"}
data modify storage sixcombat:_ x.bcomp.block_delay_seconds set from storage sixcombat:_ x.bdata.delay
data modify storage sixcombat:_ x.bcomp.disable_cooldown_scale set from storage sixcombat:_ x.bdata.disable_cooldown_scale
data modify storage sixcombat:_ x.bcomp.damage_reductions[0].base set from storage sixcombat:_ x.bdata.damage_reduction.base
data modify storage sixcombat:_ x.bcomp.damage_reductions[0].factor set from storage sixcombat:_ x.bdata.damage_reduction.percent
data modify storage sixcombat:_ x.bcomp.damage_reductions[0].horizontal_blocking_angle set from storage sixcombat:_ x.bdata.max_angle
data modify storage sixcombat:_ x.bcomp.item_damage.factor set from storage sixcombat:_ x.bdata.damage_reduction.percent
execute if data storage sixcombat:_ x.bdata.sound.on_block unless data storage sixcombat:_ x.bdata.sound{on_block:false} run data modify storage sixcombat:_ x.bcomp.block_sound set from storage sixcombat:_ x.bdata.sound.on_block
execute if data storage sixcombat:_ x.bdata.sound.on_disable unless data storage sixcombat:_ x.bdata.sound{on_disable:false} run data modify storage sixcombat:_ x.bcomp.disable_sound set from storage sixcombat:_ x.bdata.sound.on_disable

execute unless data storage sixcombat:_ var.cache.this_melee{blocks_attacks:false} run data modify storage sixcombat:_ var.cache.entry.components."minecraft:blocks_attacks" set from storage sixcombat:_ x.bcomp

# additional attributes:
data modify storage sixcombat:_ x.attrs set from storage sixcombat:_ var.cache.this_melee.additional_modifiers
execute if data storage sixcombat:_ x.attrs[0] run data modify storage sixcombat:_ x.attrs[] merge value {slot:"mainhand", display:{type:"default"}, id:"sixcombat:item_additional_modifier"}
data modify storage sixcombat:_ var.cache.entry.attributes append from storage sixcombat:_ x.attrs[]

# add to map:
data merge storage sixcombat:_ {x:{mline:{1:"data modify storage sixcombat:_ cache.items.'", 2:true, 3:"' set from storage sixcombat:_ var.cache.entry"}}}
data modify storage sixcombat:_ x.mline.2 set from storage sixcombat:_ var.cache.this_melee.item
function six:-/mline/3 with storage sixcombat:_ x.mline

data remove storage sixcombat:_ var.cache.melees[-1]
execute if data storage sixcombat:_ var.cache.melees[0] run function sixcombat:_/cache/melees/each