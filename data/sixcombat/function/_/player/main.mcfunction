#> sixcombat:_/player/main
#--------------------
# _/tick
#--------------------

# [ enchantments ]
# overdraw
execute if entity @s[advancements={sixcombat:_/ench/drawing_overdraw=true}] run function sixcombat:_/player/ench/overdraw/drawing
execute if entity @s[advancements={sixcombat:_/ench/drawing_overdraw=false}, tag=_sixcombat.overdrawing] run function sixcombat:_/player/ench/overdraw/end
advancement revoke @s only sixcombat:_/ench/drawing_overdraw

# hardening
execute if entity @s[tag=_sixcombat.hardening_trigger] run function sixcombat:_/player/ench/hardening/increment
execute if score @s sixcombat.hardening_timer matches 0.. run function sixcombat:_/player/ench/hardening/tick