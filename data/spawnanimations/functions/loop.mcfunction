## by Tschipcraft

## Supply hidden entities with invisibility
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify,tag=!smithed.strict,tag=!ignore.global] run function spawnanimations:internal/hidden/supply_invisibility

## Validate hidden entities
execute if score ts.sa.hide ts.sa.settings matches 1 as @e[type=#spawnanimations:can_wear_armor,tag=ts.sa.to_verify] unless predicate spawnanimations:validate at @s run function spawnanimations:internal/animation/dig_up/error

## Count currently animating entities
execute store result score $global ts.sa.count if entity @e[type=!#spawnanimations:exclude,tag=ts.sa.verify]

## Let damaged mobs dig out
execute if score $global ts.sa.count matches ..100 as @e[type=!#spawnanimations:exclude,tag=ts.sa.to_verify] at @s run function spawnanimations:internal/hidden/trigger_damage

## Menu
scoreboard players enable @a tschipcraft.menu
#scoreboard players add @a ts.sa.welcome 0 - don't show menu on first boot

schedule function spawnanimations:loop 5t
