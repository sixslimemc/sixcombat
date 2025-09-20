#> sixcombat:_/player/ench/echo_shot/projectile/shooter
#--------------------
# ./trigger
#--------------------

execute if items entity @s weapon.mainhand #sixcombat:enchantable/ranged/echo_shot run data modify storage sixcombat:_ var.echo_shot.item set from entity @s SelectedItem
execute unless data storage sixcombat:_ var.echo_shot.item run data modify storage sixcombat:_ xvar.echo_shot.item set from entity @s equipment.offhand

#execute if entity @s[type=firework_rocket] run return run function sixcombat:_/player/ench/spread_shot/projectile/firework/main