#> mindfulp-weapons:_/init
#--------------------
# _/load
#--------------------
# called when first installed.

data modify storage mindfulp-weapons:_ x.base_weapon set value {knockback:0f, range_modifier:0f, disable_block_seconds:0f, blocks_attacks:false}
data modify storage mindfulp-weapons:_ x.base_sword set from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:_ x.base_sword merge value {blocks_attacks:{delay:0.15f, disable_cooldown_scale:0.6f, max_angle:60f}}

# [ airborne modifiers ]
data modify storage mindfulp-weapons:config aireborne_modifiers set value []

data modify storage mindfulp-weapons:config aireborne_modifiers append value {type:"minecraft:attack_speed", amount:-0.45f, operation:"add_multiplied_total"}

# [ weapons ]
data modify storage mindfulp-weapons:config weapons set value []

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_sword
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:1.4f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {blocks_attacks:{damage_reduction:{base:1f, percent:0.35f}, sound:{on_block:"minecraft:block.iron.hit", on_disable:"minecraft.entity.iron_golom.attack"}}}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6f, attack_speed:0.9f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:5.0f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:1.95f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:1.2f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.18f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:8f, attack_speed:0.72f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.24f}