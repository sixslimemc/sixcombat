#> sixcombat:_/player/ench/echo_shot/projectile/trigger
#--------------------
# @ench : ranged/echo_shot
#--------------------

execute on origin if predicate sixcombat:player/supress_input_active run return 0

# set {..item}
execute on origin run function sixcombat:_/player/ench/echo_shot/projectile/shooter

scoreboard players operation @s _sixcombat.echo_shot_starter = *echo_shot.level _sixcombat

#execute if entity @s[type=firework_rocket] run return run function sixcombat:_/player/ench/spread_shot/projectile/firework/main

data remove storage sixcombat:_ var.echo_shot
scoreboard players reset *echo_shot.level _sixcombat