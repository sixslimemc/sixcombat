
# melee enchantments
~ Sword | Axe | Hoe | Shovel | Pickaxe - xxxxx
## class A (5) 
- sharpness : xxxxx | increases on-hit damage by 0.5L
- quickness : xxxxx | increases attack speed by 0.04L

## class B (4)
- shatter : xxxxx | decreases on-hit damage and increases damage attribute by 2 + 2L (effectively increasing crit damage by 1 + L
- shred : xxxxx | adds (and refreshes) a stack of Shred to the target that lasts for 3 seconds, up to L stacks. deal 1 extra damage for each Shred stack on a target
- breach : xxxxx | ignores 5 + 10L percent of target's armor
- ignite : xxxxx | ignites target for 1.2 + 2.8L seconds
- knockback : xxxxx | increases knockback by 0.25 + 0.75L
- cripple : xxxxx | slows target by 5 + 15L decaying percent for 1 + 0.5L seconds
- cleave : x---- | increases sweeping damage ratio by 0.05 + 0.2L

## class C (3)
- Overswing : xxxxx | let X = 5 + 7.5L; increases total attack damage by X percent, decreases total attack speed by 1-(100/(100 + X))
- Zeal : xxxxx | applies (and refreshes) a stack Zeal for 2 + 0.5L seconds, up to 3 + L. each stack of Zeal gives 5 + 2L movement speed.
- Arcana : xxxxx | deal 1 + 1.5L damage flat on-hit magic, but reduce damage attribute by 0.5 + L.
- Momentum : -x-xx | sprint attacks increase your attack speed by 5 + 10L percent for 2 seconds (or until your next attack), and reduces the targets attack range by 5 + 10L percent for 1 + 0.2L seconds.

## class D (2)
- necrobane : xxxxx | increases damage against undead by 2.5L
- aquabane : xxxxx | increases damage against aquatic by 2.5L
- arthrobane : xxxxx | increases damage against athropods by 2.5L
- exsilbane : xxxxx | increases damage against otherworldly by 2.5L
- faunbane : xxxxx | increases damage against natural animals by 2.5L

## class E (1)
- soul harvest : xxxxx | heal for 10L percent of max health of target upon killing a target.
- Cold Shock : xxxxx | reduce attack speed and attack damage of target by 100% for 0.3L seconds.
- echo : xxxxx | deals an extra instance of L damage after 0.75 second, dealing knockback.
- unstable : xxxxx | mark only the last target(s) hit, deal 2L extra on hit damage to unmarked targets.
- berserk : xxxxx | increase total damage by 20L percent when under half health, decrease it by 10L percent when at or over.
- scorch sigil : xxxxx | marks targets for 3 seconds. marked targets take 30L percent more damage from magic/fire sources.
- thundercall : xxxxx | <must be raining> : 25L percent chance to mark unmarked targets for 3 seconds. hitting a marked target consumes the mark and summons lightning after a 0.8s delay.

# shield enchantments
~ can check if blocking via score predicate.

## class A (4)
- Hardness | blocks 0.5L extra flat damage.
- Readiness | reduces delay and after-effect duration by 0.05L seconds (L ticks).

## class B (3)
- Parry | if you block damage within 1 + 2L ticks of effectively blocking: block all damage, take 0 knockback, remove blocking modifiers, if it's a projectile, redirect it in the direction you are facing.
- Repel | knocks back attacker when blocked and reflects projectiles in the direction they came from (force scaling with L).
- Thorned | attackers take 1 + L magic damage.

## class C (2)
- Magic Barrier | magic protection 1 + 2L when effectively blocking.
- Wide Arc | increase max angle by 10 + 25L.
- Bail | gain 25 + 15L movement speed for 3 + L seconds when your shield is disabled.
- Lifeline | when under 40% max health: gain protection 1 + L when effectively blocking. blocking any damage will heal for 0.5L.

## class D (1)
- Molten Shell (rename) | ignite attackers for 3L seconds, gain 100% burn resistance when effectively blocking.
- Warp Response | teleport L blocks toward your input direction when blocking damage.
- Frostbiting | reduce attackers' movement speed, attack speed, and attack speed by 30L percent for 2L seconds.
- Overguard | effectively blocking for 3 seconds without blocking any damage will give you 4L seconds of 50% damage reduction. this timer will constantly refresh until you block an attack or unblock. taking damage while this is active reduces the timer by 1.5 seconds.

# armor enchantments
~ Helmet | Chestplate | Leggings | Boots

## Class A (5)
- Protection | protection 0.5 + 0.5L
- Mobility | gain 0.015 + 0.015L movement speed

## Class B (3)
- Fire Defy | protection L against fire, and reduce burning time by 2.5 + 7.5L percent
- Blast Defy | protection L against explosions
- Impact Defy | 2.5 + 7.5L percent knockback resistance (and explosion knockback resistance)
- Magic Defy | protection L against magic
- Projectile Defy | protection L against projectiles

## class C (2)
- Safe Falling : --xx | increase safe falling distance by 1 + 2L, decrease fall damage multiplier by 0.1L
- Reflecting : -x-- | deal 10 + 20L percent post-mitigation damage back to the attacker as magic damage.
- Reaching : xx-- | increase block interaction range by 0.25 + 0.5L blocks and entity interaction range by 0.1 + 0.3L blocks.
- Strafing : --xx | increase movement speed when not sprinting by 5 + 7.5L percent, increase sneaking speed by 0.05 + 0.1L
- Hardening : xx-- | taking damage adds/refreshes a stack for 2 seconds, up to 1 + 2L. each stack grants protection 0.75.
- Accelerating : -xx- | gain a stack for every 1.6 - 0.1L seconds spent spriting, lost when stopping or attacking, up to 2 + 3L. each stack grants 5 percent movement speed and 0.3 attack knockback
- Fleeting : x--x | gain 10 + 10L movement speed for 0.8 + 0.2L seconds decaying when taking armor-blocking damage, 

## class D (1)
- Heart | increases max health by 2L
- Malintent | decrease max health by 2L. increase movement, attack, and mining speed by 0.075L.
- Rimeglare : x--- | targets within 20 blocks you directly look at for more than 5 ticks get 25L percent reduced movement speed for 0.7 seconds. projectiles you look at get their motion reduced by 30L percent (once).
- Molten Shell : -x-- | after not taking non-magic damage for 8 seconds, gain the shell. the shell grants non-magic protection 10L from 1 hit, then it breaks.
- Gravity -xx- | increase gravity by 5 + 15L percent when not holding jump, increase jump force to make up for it.
- Antigravity : -xx- | decrease gravity by 15 + 30L percent when holding jump.
- Luminescent : xx-- | emit a light level of 3 + 4CL
- Potion Affinity : xx-- | positive potion effects last 30L percent longer when applied
- Frost Walker : --xx | frost walker 1.5L
- Depth Strider : --xx | depth strider
- Soul Speed : --xx | soul speed

# ranged enchantments
~ bow | crossbow
~ non-pickable arrows should break on contact with blocks.

## class A (5)
- Overdraw x- : for every 0.6 seconds drawing your bow past maximum draw, gain a stack, up to L. for every stack, increase arrow speed and accuracy.
- quickdraw : -x | increases draw speed

## class B (2)
- deadshot | reduces spread and drag, arrows that fly for long periods of time crit.
- spreadshot | shoots 2L additional arrows to the sides; can be prevented by sneaking.
- echoshot | shoots L additional arrows in quick succession after the first, following the same trajectory; can be prevented by sneaking.

## class C (1)
- Returna | arrows that successfully hit are returned to your inventory.
- Direca | arrows slightly home toward targets.
- Riccocha | arrows bounce L times on blocks.
- Gravita | arrows have no gravity for the first 2 seconds of flight.
- Thruphasa | arrows can phase through L walls, up to 2 blocks thick.

# fletching
- arrows are crafted normally, then brought to the fletching table to modify.
- arrows have 2 Modifier slots (enchantments).
- using the fletching table, you can combine 8 arrows and a chosen material to add the material's modifier to the arrows.

# arrow types
~ <modifier> : <material> / <can stack (x/-)>

Power : quartz / x | increases arrow damage
Pierce : diamond / x | increases peirce 
Punch : gold ingot / x | increases knockback
Glow : glowstone dust / x | inflicts glowing for L duration
Shatter : amethyst shard / - | deals 50% damage and on-hit to targets in a cone behind the hit target
Paper-tipped : paper / - | arrows deal 70% less damage, but allows for potion modifiers
Breach : netherite scrap / x | ignores a portion of armor
Arcana : lapis lazuli / x | deals flat magic damage
Flaming : blaze powder / - | shot on fire
Aquatic : prismarine crystals / x | keep velocity underwater, and deal more damage to aquatic creatures
Impact : iron ingot / x | reduces jump height, movement speed, attack damage, and attack speed by 100% very briefly.
Pull : chain / x | limits max arrow range scaling with L (itemize on exceeding), pulls target toward you.


Fragile Catalyst : eye of ender / - | arrows are unrecoverable, adds an additional modifier slot (takes 0 modifier slots)

