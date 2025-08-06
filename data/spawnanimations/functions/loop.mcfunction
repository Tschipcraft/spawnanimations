## by Tschipcraft
# Runs every 5 ticks

schedule function spawnanimations:loop 5t

## Supply invisibility to hidden entities
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify,tag=!smithed.strict,tag=!ignore.global] run function spawnanimations:internal/entity/ehs/supply_invisibility

## Check for old save format (post-1.20.5)
function spawnanimations:internal/entity/ehs/check_for_old_v0_format

## Validate hidden entities
# Check save format validity
execute as @e[type=#spawnanimations:can_wear_armor,tag=ts.sa.to_verify,tag=ts.sa.ehs.saved] unless predicate spawnanimations:validate at @s run function spawnanimations:internal/entity/ehs/conflict/evaluate

# Escape protection for shrunk entities
execute as @e[type=#spawnanimations:has_emissive_layer,tag=ts.sa.to_verify,tag=ts.sa.ehs.shrunk] at @s run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_enclosure
execute if score $enderman_hack ts.sa.settings matches 1..2 as @e[type=minecraft:enderman,tag=ts.sa.to_verify,tag=ts.sa.ehs.pehkui.hitbox] at @s run function spawnanimations:internal/entity/ehs/entity_specific/emissive_layer/prevent_enclosure_breach/check_enclosure

## Remove problematic items
execute as @e[type=minecraft:item,tag=!ts.sa.i.checked,tag=!global.ignore] run function spawnanimations:internal/entity/ehs/remove_invalid_item/check

## Count currently animating entities
execute store result score $global ts.sa.count if entity @e[type=!#spawnanimations:exclude,tag=ts.sa.verify]

## Let damaged mobs dig out
execute if score $global ts.sa.count matches ..100 as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify] at @s run function spawnanimations:internal/entity/trigger_damage

## Menu
scoreboard players enable @a tschipcraft.menu
#scoreboard players add @a ts.sa.welcome 0 - don't show menu on first boot
