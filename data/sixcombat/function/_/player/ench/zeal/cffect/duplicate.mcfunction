#> sixcombat:_/player/ench/zeal/cffect/duplicate
#--------------------
# @cffect:duplicate_handler : sixcombat.enchantment.melee.zeal  
#--------------------

data modify storage cffect:api duplicate[0].trigger set value {start:true, end:false}

data modify storage sixcombat:_ x.this set from storage cffect:api duplicate[0]

# fully override cffect if levels do not match:
execute store result score *x _sixcombat run data get storage sixcombat:_ x.this.new.data.level
execute store result score *y _sixcombat run data get storage sixcombat:_ x.this.old.data.level
execute unless score *x _sixcombat = *y _sixcombat run return 0

# *x = max stacks:
scoreboard players set *y _sixcombat 2
scoreboard players operation *x _sixcombat *= *y _sixcombat
scoreboard players add *x _sixcombat 1

# *y = new stack amount, clamped:
execute store result score *y _sixcombat run data get storage sixcombat:_ x.this.new.data.stacks
execute store result score *z _sixcombat run data get storage sixcombat:_ x.this.old.data.stacks
scoreboard players operation *y _sixcombat += *z _sixcombat
execute if score *y _sixcombat > *x _sixcombat run scoreboard players operation *y _sixcombat = *x _sixcombat

execute store result storage cffect:api duplicate[0].new.data.stacks int 1 run scoreboard players get *y _sixcombat