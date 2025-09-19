#> sixcombat:_/player/ench/overdraw/increment/trigger
#--------------------
# ../drawing
#--------------------

execute if score @s _sixcombat.overdraw_level matches 0 run scoreboard players remove @s _sixcombat.overdraw_threshold 19

execute if score @s _sixcombat.overdraw_level matches 1.. run scoreboard players remove @s _sixcombat.overdraw_threshold 1


scoreboard players add @s _sixcombat.overdraw_level 1
scoreboard players set @s _sixcombat.overdraw_time 1

# DEBUG:
tellraw @a ["overdraw: ", {'score':{'name':'@s', 'objective':'_sixcombat.overdraw_level'}}]
playsound block.note_block.hat block @a ~ ~ ~ 1 2