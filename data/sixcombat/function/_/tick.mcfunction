#> sixcombat:_/tick
#--------------------
# @TICK
#--------------------
schedule function sixcombat:_/tick 1t

execute as @a[gamemode=!spectator] at @s run function sixcombat:_/player/main
execute as @e[type=#minecraft:arrows, tag=!_sixcombat.checked] at @s run function sixcombat:_/systems/arrow/check

# score resets
scoreboard players reset @a _sixcombat.shoot_bow