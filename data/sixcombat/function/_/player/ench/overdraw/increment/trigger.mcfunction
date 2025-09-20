#> sixcombat:_/player/ench/overdraw/increment/trigger
#--------------------
# ../drawing
#--------------------

execute if score @s _sixcombat.overdraw_level matches 0 run scoreboard players remove @s _sixcombat.overdraw_threshold 19

execute if score @s _sixcombat.overdraw_level matches 1.. run scoreboard players remove @s _sixcombat.overdraw_threshold 1


scoreboard players add @s _sixcombat.overdraw_level 1
scoreboard players set @s _sixcombat.overdraw_time 0

scoreboard players operation *x _sixcombat = @s _sixcombat.overdraw_level
scoreboard players add *x _sixcombat 20
execute store result storage sixcombat:_ x.pitch float 0.065 run scoreboard players get *x _sixcombat
function sixcombat:_/player/ench/overdraw/increment/sound with storage sixcombat:_ x