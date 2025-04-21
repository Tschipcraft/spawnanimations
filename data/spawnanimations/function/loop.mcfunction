## by Tschipcraft
# Runs every 5 ticks

schedule function spawnanimations:loop 5t

## Supply invisibility to hidden entities
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify,tag=!smithed.strict,tag=!ignore.global] run function spawnanimations:internal/entity/ehs/supply_invisibility

## Check for old formats (post-1.20.5)
function spawnanimations:internal/entity/ehs/check_for_old_v0_format
function spawnanimations:internal/entity/ehs/check_for_old_v1_format

## Validate hidden entities
execute as @e[type=#spawnanimations:can_wear_armor,tag=ts.sa.to_verify,tag=ts.sa.ehs.saved] unless predicate spawnanimations:validate at @s run function spawnanimations:internal/entity/ehs/conflict/evaluate

## Remove problematic items
execute as @e[type=minecraft:item,tag=!ts.sa.i.checked,tag=!global.ignore] run function spawnanimations:internal/entity/ehs/remove_invalid_item/check

## Count currently animating entities
execute store result score $global ts.sa.count if entity @e[type=!#spawnanimations:exclude,tag=ts.sa.verify]

## Let damaged mobs dig out
execute if score $global ts.sa.count matches ..100 as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify] at @s run function spawnanimations:internal/entity/trigger_damage

## Menu
scoreboard players enable @a tschipcraft.menu
#scoreboard players add @a ts.sa.welcome 0 - don't show menu on first boot
# A player used the Edit activation distance button
execute as @a[scores={ts.sa.distance=-50..}] at @s run function spawnanimations:settings/custom_distance
