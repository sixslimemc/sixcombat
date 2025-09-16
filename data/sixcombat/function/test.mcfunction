
data modify storage six:in magnitude.vector set from entity @s Motion
function six:vector/magnitude
# DEBUG:
tellraw @a ["", {'storage':'six:out', 'nbt':'magnitude.result'}]
tag @s add test