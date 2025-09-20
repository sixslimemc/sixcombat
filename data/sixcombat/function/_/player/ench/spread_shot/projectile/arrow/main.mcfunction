#> sixcombat:_/player/ench/spread_shot/projectile/arrow/main
#--------------------
# ../trigger
#--------------------

# get {..ammo_entry}
execute on origin store result score *x _sixcombat run function sixcombat:_/player/ench/spread_shot/projectile/arrow/shooter
execute if score *x _sixcombat matches 0 run return run kill @s
execute if score *x _sixcombat matches 2 run return 2

data modify entity @s item set from storage sixcombat:_ var.spread_shot.ammo_entry.item
data modify entity @s pickup set value 1b