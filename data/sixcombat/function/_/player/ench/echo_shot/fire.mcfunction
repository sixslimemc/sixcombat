#> sixcombat:_/player/ench/echo_shot/trigger
#--------------------
# @delay:delay : ./projectile/arrow/shooter
#--------------------

# {task.data.projectile_type} is either:
# 1 - arrow type
# 2 - firework type

# set {..arrow_item}
execute store result score *x _sixcombat run function sixcombat:_/player/ench/echo_shot/get_ammo

execute if score *x _sixcombat matches 0 run return 0

execute if score *echo_shot.type _sixcombat matches 1 anchored eyes positioned ^ ^ ^0.1 summon arrow run function sixcombat:_/player/ench/echo_shot/init_arrow

#execute if score *echo_shot.type _sixcombat matches 1 anchored eyes positioned ^ ^ ^0.1 summon arrow run function sixcombat:_/player/ench/echo_shot/init_firework

# ammo:

# DEBUG:
tellraw @a ["TASK: ", {'storage':'delay:api', 'nbt':'task'}]

data remove storage sixcombat:_ var.echo_shot