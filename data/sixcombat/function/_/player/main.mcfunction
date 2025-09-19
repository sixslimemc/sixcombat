#> sixcombat:_/player/main
#--------------------
# _/tick
#--------------------

# overdraw
execute if entity @s[advancements={sixcombat:_/ench/drawing_overdraw=true}] run function sixcombat:_/player/ench/overdraw/drawing
execute if entity @s[advancements={sixcombat:_/ench/drawing_overdraw=false}, tag=_sixcombat.overdrawing] run function sixcombat:_/player/ench/overdraw/end