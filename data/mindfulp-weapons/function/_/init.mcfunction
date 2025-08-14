#> mindfulp-weapons:_/init
#--------------------
# _/load
#--------------------
# called when first installed.

data modify storage mindfulp-weapons:_ x.base_weapon set value {knockback:0f, range_modifier:0f, disable_block_seconds:0f, blocks_attacks:false, additional_modifiers:[]}

# [ airborne modifiers ]
data modify storage mindfulp-weapons:config airborne_modifiers set value []

data modify storage mindfulp-weapons:config airborne_modifiers append value {type:"minecraft:attack_speed", amount:-0.45f, operation:"add_multiplied_total"}

# [ weapons ]
data modify storage mindfulp-weapons:config weapons set value []

# swords:
data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:wooden_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:2f, attack_speed:1.42f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:stone_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:3f, attack_speed:1.36f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:1.3f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:diamond_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:5f, attack_speed:1.24f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:netherite_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6f, attack_speed:1.18f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:golden_sword"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4.5f, attack_speed:1.15f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}
data modify storage mindfulp-weapons:config weapons[-1] merge value {knockback:0.5f}

# axes:
data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:wooden_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:0.98f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:5.0f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:stone_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:5f, attack_speed:0.94f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:5.5f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6f, attack_speed:0.9f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:6.0f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:diamond_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:7f, attack_speed:0.86f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:6.5f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:netherite_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:8f, attack_speed:0.82f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:7.0f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:golden_axe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6.5f, attack_speed:0.8f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {disable_block_seconds:6.25f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {knockback:0.5f}

# hoes:
data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:wooden_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:2f, attack_speed:2.02f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:stone_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:3f, attack_speed:1.98f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:1.94f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:diamond_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:5f, attack_speed:1.9f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:netherite_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6f, attack_speed:1.86f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:golden_hoe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4.5f, attack_speed:1.84f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {knockback:0.5f}

# shovels:
data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:wooden_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:2f, attack_speed:1.32f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.17f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:stone_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:3f, attack_speed:1.26f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.185f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4f, attack_speed:1.2f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.2f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:diamond_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:5f, attack_speed:1.14f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.215f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:netherite_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6f, attack_speed:1.08f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.23f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:golden_shovel"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:4.5f, attack_speed:1.05f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:0.2075f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {knockback:0.5f}

# pickaxes:
data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:wooden_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:6f, attack_speed:0.8f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.28f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:stone_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:7f, attack_speed:0.76f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.26f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:iron_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:8f, attack_speed:0.72f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.24f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:diamond_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:9f, attack_speed:0.68f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.22f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:netherite_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:10f, attack_speed:0.64f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.2f}

data modify storage mindfulp-weapons:config weapons append from storage mindfulp-weapons:_ x.base_weapon
data modify storage mindfulp-weapons:config weapons[-1].item set value "minecraft:golden_pickaxe"
data modify storage mindfulp-weapons:config weapons[-1] merge value {damage:8.5f, attack_speed:0.62f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {range_modifier:-0.23f}
data modify storage mindfulp-weapons:config weapons[-1] merge value {knockback:0.5f}
