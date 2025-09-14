#> UTIL : eval/blocking
#--------------------
# -> config: BlockingConfig
#--------------------
# <- component: @"minecraft:blocks_attacks"
# <- blocking_data: _BlockingData
# <- lore[]: string
#--------------------
# TODO: description
#--------------------
# 1: 
#--------------------

data remove storage sixcombat:_ util.out.blocking

data modify storage sixcombat:_ u.blocking.in set from storage sixcombat:_ util.in.blocking.config

# component:
execute store result storage sixcombat:_ util.out.blocking.component.block_delay_seconds float 0.05 run data get storage sixcombat:_ u.blocking.in.delay_ticks
data modify storage sixcombat:_ util.out.blocking.component.disable_cooldown_scale set from storage sixcombat:_ u.blocking.in.disable_cooldown_scale

data modify storage sixcombat:_ util.out.blocking.component.damage_reductions set value [{}]
data modify storage sixcombat:_ util.out.blocking.component.damage_reductions[0].horizontal_blocking_angle set from storage sixcombat:_ u.blocking.in.max_angle
data modify storage sixcombat:_ util.out.blocking.component.damage_reductions[0].base set from storage sixcombat:_ u.blocking.in.damage_reduction.base
data modify storage sixcombat:_ util.out.blocking.component.damage_reductions[0].factor set from storage sixcombat:_ u.blocking.in.damage_reduction.percent

data modify storage sixcombat:_ util.out.blocking.component.item_damage.threshold set value 1
data modify storage sixcombat:_ util.out.blocking.component.item_damage.base set value 0
data modify storage sixcombat:_ util.out.blocking.component.item_damage.factor set value 0.8f

data modify storage sixcombat:_ util.out.blocking.component.block_sound set from storage sixcombat:_ u.blocking.in.sound.on_block
data modify storage sixcombat:_ util.out.blocking.component.disabled_sound set from storage sixcombat:_ u.blocking.in.sound.disabled_sound

data modify storage sixcombat:_ util.out.blocking.component.bypassed_by set value "#minecraft:bypasses_shield"

# blocking data:
data modify storage sixcombat:_ util.out.blocking.blocking_data.persist_ticks set from storage sixcombat:_ u.blocking.in.blocking_modifiers.persist_ticks
data modify storage sixcombat:_ util.out.blocking.blocking_data.attributes set value []
data modify storage sixcombat:_ util.out.blocking.blocking_data.attributes append from storage sixcombat:_ u.blocking.in.blocking_modifiers.additional[]
data modify storage sixcombat:_ util.out.blocking.blocking_data.attributes[].id set value "sixcombat:blocking_additional"
data modify storage sixcombat:_ util.out.blocking.blocking_data.attributes append value {id:"sixcombat:blocking", type:"minecraft:attack_speed", operation:"add_multiplied_total"}
data modify storage sixcombat:_ util.out.blocking.blocking_data.attributes[-1].amount set from storage sixcombat:_ u.blocking.in.blocking_modifiers.attack_speed

# [ lore ]

# blocks attacks:
data modify storage sixcombat:_ util.out.blocking.lore set value []
data modify storage sixcombat:_ util.out.blocking.lore append value {text:"Blocks Attacks:", color:"green", italic:false}

execute store result score *u.blocking.block_percent _sixcombat run data get storage sixcombat:_ util.out.blocking.component.damage_reductions[0].factor 100
execute store result storage sixcombat:_ u.blocking.persist_seconds float 0.05 run data get storage sixcombat:_ util.out.blocking.blocking_data.persist_ticks

data modify storage six:in resolve.text set value [{text:" Block: ", color:"dark_green", italic:false}, {score:{name:"*u.blocking.block_percent", objective:"_sixcombat"}, italic:false, color:"gold"}, {text:"%", color:"gold", italic:false}, {text:" + ", color:"gray", italic:false}, {storage:"sixcombat:_", nbt:"util.out.blocking.component.damage_reductions[0].base", italic:false, color:"gray"}]
function six:text/resolve
data modify storage sixcombat:_ util.out.blocking.lore append from storage six:out resolve.result

data modify storage six:in resolve.text set value [{text:" Delay: ", color:"dark_green", italic:false}, {storage:"sixcombat:_", nbt:"util.out.blocking.component.block_delay_seconds", italic:false, color:"red"}, {text:" (sec)", color:"dark_gray", italic:false}]
function six:text/resolve
data modify storage sixcombat:_ util.out.blocking.lore append from storage six:out resolve.result

execute store result score *u.blocking.arc _sixcombat run data get storage sixcombat:_ util.out.blocking.component.damage_reductions[0].horizontal_blocking_angle 1
data modify storage six:in resolve.text set value [{text:" Max Angle: ", color:"dark_green", italic:false}, {score:{name:"*u.blocking.arc", objective:"_sixcombat"}, italic:false, color:"gray"}, {text: " (deg)", color:"dark_gray", italic:false}]
function six:text/resolve
data modify storage sixcombat:_ util.out.blocking.lore append from storage six:out resolve.result

data modify storage six:in resolve.text set value [{text:" Downtime Factor: ", color:"dark_green", italic:false}, {storage:"sixcombat:_", nbt:"util.out.blocking.component.disable_cooldown_scale", italic:false, color:"yellow"}]
function six:text/resolve
data modify storage sixcombat:_ util.out.blocking.lore append from storage six:out resolve.result

# while blocking and <x>s after:
data modify storage sixcombat:_ util.out.blocking.lore append value ""
data modify storage sixcombat:_ util.out.blocking.lore append value {text:"While Blocking:", color:"gray", italic:false}
data modify storage six:in resolve.text set value [{text:"(and for ", color:"dark_gray", italic:false}, {storage:"sixcombat:_", nbt:"u.blocking.persist_seconds", color:"red", italic:false}, {text:" seconds after)", color:"dark_gray", italic:false}]
function six:text/resolve
data modify storage sixcombat:_ util.out.blocking.lore append from storage six:out resolve.result
data modify storage six:in resolve.text set value {storage:"sixcombat:_", nbt:"util.out.blocking.blocking_data.attributes[-1].amount", color:"red", italic:false}
function six:text/resolve
data modify storage sixcombat:_ util.out.blocking.lore append from storage six:out resolve.result

data modify storage sixcombat:_ util.out.blocking.lore append value {text:"TODO", color:"light_purple"}

data remove storage sixcombat:_ u.blocking
scoreboard players reset *u.blocking.block_percent