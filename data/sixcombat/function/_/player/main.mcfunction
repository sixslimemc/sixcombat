#> sixcombat:_/player/main
#--------------------
# _/tick
#--------------------

# sprint check:
execute store success score @s _sixcombat.sprint_check if predicate sixcombat:_/sprinting

# [ enchantments ]
# overdraw:
execute if entity @s[advancements={sixcombat:_/ench/drawing_overdraw=true}] run function sixcombat:_/player/ench/overdraw/drawing
execute if entity @s[advancements={sixcombat:_/ench/drawing_overdraw=false}, tag=_sixcombat.overdrawing] run function sixcombat:_/player/ench/overdraw/end
advancement revoke @s only sixcombat:_/ench/drawing_overdraw

# hardening:
execute if entity @s[tag=_sixcombat.hardening_trigger] run function sixcombat:_/player/ench/hardening/increment
execute if score @s sixcombat.hardening_timer matches 0.. run function sixcombat:_/player/ench/hardening/tick

# fleeting:
execute if entity @s[tag=_sixcombat.fleeting_trigger] run function sixcombat:_/player/ench/fleeting/on_detect

# accelerating:
execute if entity @s[tag=_sixcombat.accelerating_active, tag=!_sixcombat.accelerating_tick] run function sixcombat:_/player/ench/accelerating/reset
execute if entity @s[tag=_sixcombat.accelerating_tick] run function sixcombat:_/player/ench/accelerating/tick

# luminescent:
execute if entity @s[tag=_sixcombat.luminescent_active, tag=!_sixcombat.luminescent_tick] run function sixcombat:_/player/ench/luminescent/end
execute if entity @s[tag=_sixcombat.luminescent_tick] run function sixcombat:_/player/ench/luminescent/tick

# antigravity:
execute if entity @s[tag=_sixcombat.antigravity_active, tag=!_sixcombat.antigravity_tick] run function sixcombat:_/player/ench/antigravity/end
execute if entity @s[tag=_sixcombat.antigravity_tick] run function sixcombat:_/player/ench/antigravity/tick

# gravity:
execute if entity @s[tag=_sixcombat.gravity_active, tag=!_sixcombat.gravity_tick] run function sixcombat:_/player/ench/gravity/end
execute if entity @s[tag=_sixcombat.gravity_tick] run function sixcombat:_/player/ench/gravity/tick

# potion affinity:
execute if entity @s[tag=_sixcombat.potion_affinity_tick] run function sixcombat:_/player/ench/potion_affinity/tick