#> sixcombat:_/player/erch/accelerating/apply_modifier
#--------------------
# ./realize_stacks
#--------------------

$attribute @s minecraft:movement_speed modifier add sixcombat:enchantment/armor/accelerating $(ms_potency) add_multiplied_base
$attribute @s minecraft:attack_knockback modifier add sixcombat:enchantment/armor/accelerating $(kb_potency) add_value