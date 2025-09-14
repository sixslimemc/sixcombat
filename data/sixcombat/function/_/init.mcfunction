#> sixcombat:_/init
#--------------------
# _/load
#--------------------
# called when first installed.

data modify storage sixcombat:_ x.base_weapon set value {knockback:0f, range_modifier:0f, disable_block_seconds:0f, blocks_attacks:false, additional_modifiers:[]}
data modify storage sixcombat:_ x.base_armor set value {armor:0f, armor_toughness:0f, movement_speed_modifier:0f, knockback_resist:0f, additional_modifiers:[]}
data modify storage sixcombat:_ x.base_shield set value {movement_speed_modifier:0f, additional_modifiers:[], block:{delay_ticks:0, disable_cooldown_scale:1f, max_angle:90f, sound:false, damage_reduction:{base:1f, percent:0f}, blocking_modifiers:{attack_speed:-0.2f, additional:[], persist_ticks:20}, sound:{on_block:"minecraft:item.shield.block", on_disable:"minecraft:item.shield.break"}}}
# [ airborne modifiers ]
data modify storage sixcombat:config airborne_modifiers set value []

data modify storage sixcombat:config airborne_modifiers append value {type:"minecraft:attack_speed", amount:-0.45f, operation:"add_multiplied_total"}

# [ melee ]
data modify storage sixcombat:config melee set value []

# swords:
data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:wooden_sword"
data modify storage sixcombat:config melee[-1] merge value {damage:2f, attack_speed:1.42f}
data modify storage sixcombat:config melee[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:stone_sword"
data modify storage sixcombat:config melee[-1] merge value {damage:3f, attack_speed:1.36f}
data modify storage sixcombat:config melee[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:iron_sword"
data modify storage sixcombat:config melee[-1] merge value {damage:4f, attack_speed:1.3f}
data modify storage sixcombat:config melee[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:diamond_sword"
data modify storage sixcombat:config melee[-1] merge value {damage:5f, attack_speed:1.24f}
data modify storage sixcombat:config melee[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:netherite_sword"
data modify storage sixcombat:config melee[-1] merge value {damage:6f, attack_speed:1.18f}
data modify storage sixcombat:config melee[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:golden_sword"
data modify storage sixcombat:config melee[-1] merge value {damage:4.5f, attack_speed:1.15f}
data modify storage sixcombat:config melee[-1] merge value {additional_modifiers:[{type:"minecraft:sweeping_damage_ratio", amount:0.15f, operation:"add_value"}]}
data modify storage sixcombat:config melee[-1] merge value {knockback:0.5f}

# axes:
data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:wooden_axe"
data modify storage sixcombat:config melee[-1] merge value {damage:4f, attack_speed:0.98f}
data modify storage sixcombat:config melee[-1] merge value {disable_block_seconds:5.0f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:stone_axe"
data modify storage sixcombat:config melee[-1] merge value {damage:5f, attack_speed:0.94f}
data modify storage sixcombat:config melee[-1] merge value {disable_block_seconds:5.5f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:iron_axe"
data modify storage sixcombat:config melee[-1] merge value {damage:6f, attack_speed:0.9f}
data modify storage sixcombat:config melee[-1] merge value {disable_block_seconds:6.0f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:diamond_axe"
data modify storage sixcombat:config melee[-1] merge value {damage:7f, attack_speed:0.86f}
data modify storage sixcombat:config melee[-1] merge value {disable_block_seconds:6.5f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:netherite_axe"
data modify storage sixcombat:config melee[-1] merge value {damage:8f, attack_speed:0.82f}
data modify storage sixcombat:config melee[-1] merge value {disable_block_seconds:7.0f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:golden_axe"
data modify storage sixcombat:config melee[-1] merge value {damage:6.5f, attack_speed:0.8f}
data modify storage sixcombat:config melee[-1] merge value {disable_block_seconds:6.25f}
data modify storage sixcombat:config melee[-1] merge value {knockback:0.5f}

# hoes:
data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:wooden_hoe"
data modify storage sixcombat:config melee[-1] merge value {damage:2f, attack_speed:2.02f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:stone_hoe"
data modify storage sixcombat:config melee[-1] merge value {damage:3f, attack_speed:1.98f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:iron_hoe"
data modify storage sixcombat:config melee[-1] merge value {damage:4f, attack_speed:1.94f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:diamond_hoe"
data modify storage sixcombat:config melee[-1] merge value {damage:5f, attack_speed:1.9f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:netherite_hoe"
data modify storage sixcombat:config melee[-1] merge value {damage:6f, attack_speed:1.86f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:golden_hoe"
data modify storage sixcombat:config melee[-1] merge value {damage:4.5f, attack_speed:1.84f}
data modify storage sixcombat:config melee[-1] merge value {knockback:0.5f}

# shovels:
data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:wooden_shovel"
data modify storage sixcombat:config melee[-1] merge value {damage:2f, attack_speed:1.32f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:0.17f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:stone_shovel"
data modify storage sixcombat:config melee[-1] merge value {damage:3f, attack_speed:1.26f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:0.185f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:iron_shovel"
data modify storage sixcombat:config melee[-1] merge value {damage:4f, attack_speed:1.2f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:0.2f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:diamond_shovel"
data modify storage sixcombat:config melee[-1] merge value {damage:5f, attack_speed:1.14f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:0.215f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:netherite_shovel"
data modify storage sixcombat:config melee[-1] merge value {damage:6f, attack_speed:1.08f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:0.23f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:golden_shovel"
data modify storage sixcombat:config melee[-1] merge value {damage:4.5f, attack_speed:1.05f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:0.2075f}
data modify storage sixcombat:config melee[-1] merge value {knockback:0.5f}

# pickaxes:
data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:wooden_pickaxe"
data modify storage sixcombat:config melee[-1] merge value {damage:6f, attack_speed:0.8f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:-0.28f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:stone_pickaxe"
data modify storage sixcombat:config melee[-1] merge value {damage:7f, attack_speed:0.76f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:-0.26f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:iron_pickaxe"
data modify storage sixcombat:config melee[-1] merge value {damage:8f, attack_speed:0.72f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:-0.24f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:diamond_pickaxe"
data modify storage sixcombat:config melee[-1] merge value {damage:9f, attack_speed:0.68f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:-0.22f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:netherite_pickaxe"
data modify storage sixcombat:config melee[-1] merge value {damage:10f, attack_speed:0.64f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:-0.2f}

data modify storage sixcombat:config melee append from storage sixcombat:_ x.base_weapon
data modify storage sixcombat:config melee[-1].item set value "minecraft:golden_pickaxe"
data modify storage sixcombat:config melee[-1] merge value {damage:8.5f, attack_speed:0.62f}
data modify storage sixcombat:config melee[-1] merge value {range_modifier:-0.23f}
data modify storage sixcombat:config melee[-1] merge value {knockback:0.5f}

# [ armor ]
data modify storage sixcombat:config armor set value []

# <material>: <armor> | <toughness> | <speed mod> | <kb resist>

# leather: 8 | 0 | 0 | 0
data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:leather_helmet", slot:'head'}
data modify storage sixcombat:config armor[-1] merge value {armor:1.5}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:leather_chestplate", slot:'chest'}
data modify storage sixcombat:config armor[-1] merge value {armor:3.0}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:leather_leggings", slot:'legs'}
data modify storage sixcombat:config armor[-1] merge value {armor:2.5}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:leather_boots", slot:'feet'}
data modify storage sixcombat:config armor[-1] merge value {armor:1.0}

# chain: 13 | 0 | -0.06 | 0
data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:chainmail_helmet", slot:'head'}
data modify storage sixcombat:config armor[-1] merge value {armor:2.5, movement_speed_modifier:-0.012}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:chainmail_chestplate", slot:'chest'}
data modify storage sixcombat:config armor[-1] merge value {armor:4.5, movement_speed_modifier:-0.02}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:chainmail_leggings", slot:'legs'}
data modify storage sixcombat:config armor[-1] merge value {armor:4.0, movement_speed_modifier:-0.018}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:chainmail_boots", slot:'feet'}
data modify storage sixcombat:config armor[-1] merge value {armor:2.0, movement_speed_modifier:-0.01}

# iron: 15 | 4 | -0.12 | 0
data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:iron_helmet", slot:'head'}
data modify storage sixcombat:config armor[-1] merge value {armor:3.0, armor_toughness:0.5, movement_speed_modifier:-0.025}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:iron_chestplate", slot:'chest'}
data modify storage sixcombat:config armor[-1] merge value {armor:5.0, armor_toughness:1.5, movement_speed_modifier:-0.04}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:iron_leggings", slot:'legs'}
data modify storage sixcombat:config armor[-1] merge value {armor:4.5, armor_toughness:1.5, movement_speed_modifier:-0.035}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:iron_boots", slot:'feet'}
data modify storage sixcombat:config armor[-1] merge value {armor:2.5, armor_toughness:0.5, movement_speed_modifier:-0.02}

# diamond: 20 | 8 | -0.20 | 0
data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:diamond_helmet", slot:'head'}
data modify storage sixcombat:config armor[-1] merge value {armor:4.0, armor_toughness:1.5, movement_speed_modifier:-0.042}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:diamond_chestplate", slot:'chest'}
data modify storage sixcombat:config armor[-1] merge value {armor:7.0, armor_toughness:3.0, movement_speed_modifier:-0.067}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:diamond_leggings", slot:'legs'}
data modify storage sixcombat:config armor[-1] merge value {armor:6.0, armor_toughness:2.5, movement_speed_modifier:-0.058}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:diamond_boots", slot:'feet'}
data modify storage sixcombat:config armor[-1] merge value {armor:3.0, armor_toughness:1.0, movement_speed_modifier:-0.033}

# netherite: 22 | 14 | -0.30 | 0.4
data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:netherite_helmet", slot:'head'}
data modify storage sixcombat:config armor[-1] merge value {armor:4.5, armor_toughness:3.0, movement_speed_modifier:-0.063, knockback_resist:0.05}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:netherite_chestplate", slot:'chest'}
data modify storage sixcombat:config armor[-1] merge value {armor:7.5, armor_toughness:4.5, movement_speed_modifier:-0.1, knockback_resist:0.15}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:netherite_leggings", slot:'legs'}
data modify storage sixcombat:config armor[-1] merge value {armor:6.5, armor_toughness:4.0, movement_speed_modifier:-0.088, knockback_resist:0.15}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:netherite_boots", slot:'feet'}
data modify storage sixcombat:config armor[-1] merge value {armor:3.5, armor_toughness:2.5, movement_speed_modifier:-0.05, knockback_resist:0.05}

# gold: 17 | 6 | -0.24 | 0.2
data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:golden_helmet", slot:'head'}
data modify storage sixcombat:config armor[-1] merge value {armor:3.5, armor_toughness:1.5, movement_speed_modifier:-0.05, knockback_resist:0.05}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:golden_chestplate", slot:'chest'}
data modify storage sixcombat:config armor[-1] merge value {armor:5.5, armor_toughness:2.0, movement_speed_modifier:-0.08, knockback_resist:0.05}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:golden_leggings", slot:'legs'}
data modify storage sixcombat:config armor[-1] merge value {armor:5.0, armor_toughness:1.5, movement_speed_modifier:-0.07, knockback_resist:0.05}

data modify storage sixcombat:config armor append from storage sixcombat:_ x.base_armor
data modify storage sixcombat:config armor[-1] merge value {item:"minecraft:golden_boots", slot:'feet'}
data modify storage sixcombat:config armor[-1] merge value {armor:3.0, armor_toughness:1.0, movement_speed_modifier:-0.04, knockback_resist:0.05}

# [ shield ]
data modify storage sixcombat:config shield set value {}

# iron:
data modify storage sixcombat:config shield.iron set from storage sixcombat:_ x.base_shield
data modify storage sixcombat:config shield.iron merge value {durability:300, movement_speed_modifier:-0.06}
data modify storage sixcombat:config shield.iron.block merge value {delay_ticks:8, disable_cooldown_scale:1f, max_angle:80, damage_reduction:{percent:0.60}}