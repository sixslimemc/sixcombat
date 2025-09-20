#> sixcombat:_/player/ench/echo_shot/projectile/arrow/on_check
#--------------------
# _/systems/arrow/check
#--------------------

scoreboard players operation *echo_shot.level _sixcombat = @s _sixcombat.echo_shot_starter
data modify storage sixcombat:_ var.echo_shot.original set from entity @s

execute on origin at @s run function sixcombat:_/player/ench/echo_shot/projectile/arrow/shooter

scoreboard players reset @s _sixcombat.echo_shot_starter

data remove storage sixcombat:_ var.echo_shot