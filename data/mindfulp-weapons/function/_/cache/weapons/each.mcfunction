#> mindfulp-weapons:_/cache/weapons/each
#--------------------
# ../main
#--------------------

data modify storage mindfulp-weapons:_ var.cache.this_weapon set from storage mindfulp-weapons:_ var.cache.weapons[-1]

data merge storage mindfulp-weapons:_ {var:{cache:{entry:{attributes:[], components:{}}}}}

# damage:
data modify storage mindfulp-weapons:_ var.cache.entry.attributes append value {type:"minecraft:attack_damage", slot:"mainhand",id:"mindfulp-weapons:item", operation:"add_value",display:{type:"default"}}
data modify storage mindfulp-weapons:_ var.cache.entry.attributes[-1].amount set from storage mindfulp-weapons:_ var.cache.this_weapon.damage

# attack speed:
data modify storage mindfulp-weapons:_ var.cache.entry.attributes append value {type:"minecraft:attack_speed", slot:"mainhand",id:"mindfulp-weapons:item", operation:"add_multiplied_base",display:{type:"default"}}

execute store result score *x _mindfulp-weapons run data get storage mindfulp-weapons:_ var.cache.this_weapon.attack_speed 10000
scoreboard players operation *x _mindfulp-weapons /= *4 _mindfulp-weapons
scoreboard players remove *x _mindfulp-weapons 10000
execute store result storage mindfulp-weapons:_ var.cache.entry.attributes[-1].amount float 0.0001 run scoreboard players get *x _mindfulp-weapons


data remove storage mindfulp-weapons:_ var.cache.weapons[-1]
execute if data storage mindfulp-weapons:_ var.cache.weapons[0] run function mindfulp-weapons:_/cache/weapons/each