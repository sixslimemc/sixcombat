#> sixcombat:_/player/ench/echo_shot/fire
#--------------------
# @delay:delay : ./projectile/arrow/shooter
#--------------------

# {task.data.projectile_type} is either:
# 1 - arrow type
# 2 - firework type

execute store result score *echo_shot.is_creative _sixcombat if entity @s[gamemode=creative]

execute store result score *echo_shot.type _sixcombat run data get storage delay:api task.data.projectile_type

# set {..arrow_item}
execute store result score *x _sixcombat run function sixcombat:_/player/ench/echo_shot/get_ammo

execute if score *x _sixcombat matches 0 run return 0

execute if score *echo_shot.type _sixcombat matches 1 anchored eyes positioned ^ ^-0.1 ^0.1 summon arrow run function sixcombat:_/player/ench/echo_shot/init_arrow

#execute if score *echo_shot.type _sixcombat matches 1 anchored eyes positioned ^ ^ ^0.1 summon arrow run function sixcombat:_/player/ench/echo_shot/init_firework

# refire:
execute store result score *echo_shot.remaining_shots _sixcombat run data get storage delay:api task.data.remaining_shots
scoreboard players remove *echo_shot.remaining_shots _sixcombat 1
execute if score *echo_shot.remaining_shots _sixcombat matches 1.. run function sixcombat:_/player/ench/echo_shot/refire

playsound minecraft:block.chiseled_bookshelf.insert.enchanted player @a ~ ~ ~ 1 1.6

data remove storage sixcombat:_ var.echo_shot
scoreboard players reset *echo_shot.type _sixcombat