#> sixcombat:_/tick
#--------------------
# @TICK
#--------------------
schedule function sixcombat:_/tick 1t

execute as @a[gamemode=!spectator] at @s run function sixcombat:_/player/main
execute as @e[type=#minecraft:arrows] at @s run function sixcombat:_/systems/arrow/main

# score resets
scoreboard players reset @a _sixcombat.shoot_bow