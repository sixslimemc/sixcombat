#> sixcombat:_/player/ench/echo_shot/projectile/trigger
#--------------------
# @ench : ranged/echo_shot
#--------------------


# set {..item}
execute on origin run function sixcombat:_/player/ench/echo_shot/projectile/shooter

execute store result score @s _sixcombat.echo_shot_starter run data get storage six:_ var.echo_shot.item.components."minecraft:enchantments"."sixcombat:ranged/echo_shot"

#execute if entity @s[type=firework_rocket] run return run function sixcombat:_/player/ench/spread_shot/projectile/firework/main

data remove storage six:_ var.echo_shot
