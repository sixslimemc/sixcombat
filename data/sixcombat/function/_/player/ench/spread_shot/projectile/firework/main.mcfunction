#> sixcombat:_/player/ench/spread_shot/projectile/firework/main
#--------------------
# s./trigger
#--------------------

say hio
# get {..ammo_entry}
execute on origin store result score *x _sixcombat run function sixcombat:_/player/ench/spread_shot/projectile/firework/shooter
execute if score *x _sixcombat matches 0 run return run kill @s
execute if score *x _sixcombat matches 2 run return 2

data modify entity @s FireworksItem set from storage sixcombat:_ var.spread_shot.ammo_entry.item