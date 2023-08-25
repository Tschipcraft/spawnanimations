## by Tschipcraft

## Finish initalise
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.initalise] run function spawnanimations:internal/animation/dig_up/initalise_end

## Detect new mobs
# To edit mobs that are affected, see ../tags/entity_types/dig_up_animation.json
# Normal
execute if score $version ts.sa.settings matches 2587.. as @e[type=#spawnanimations:dig_up_animation,tag=!ts.sa.verify,tag=!ts.sa.verified,tag=!ts.sa.to_verify,tag=!exclude,tag=!smithed.strict,tag=!smithed.block,tag=!global.ignore,tag=!global.ignore.pos,limit=10,sort=arbitrary] run function spawnanimations:internal/animation/dig_up/prepare


## Animation trigger
# Player nearby
execute if score $global ts.sa.count matches ..100 as @a[gamemode=!spectator,sort=random,limit=5] at @s run function spawnanimations:internal/run_activation_batch
# Exclusion criteria
execute if score $global ts.sa.count matches ..100 as @e[type=!#spawnanimations:exclude,predicate=!spawnanimations:trigger,tag=ts.sa.to_verify,limit=10,sort=random] at @s run function spawnanimations:internal/animation/dig_up/start


## Tick dig up animation
execute as @e[type=!#spawnanimations:exclude,tag=ts.sa.verify,tag=!smithed.strict,tag=!ignore.global] at @s run function spawnanimations:internal/animation/dig_up/core


## Special Animations
# - see you in v2.0


## Remove problematic items
execute as @e[type=minecraft:item,tag=!ts.sa.i.checked,tag=!global.ignore] run function spawnanimations:internal/hidden/remove_invalid_item/check


## Menu
execute as @a[scores={tschipcraft.menu=1..}] run scoreboard players set @s ts.sa.welcome 0
execute as @a[scores={ts.sa.welcome=0}] run function #spawnanimations:welcome
# A player executed /trigger tschipcraft.menu
execute as @a[scores={tschipcraft.menu=1..}] run schedule function spawnanimations:messages/menu_reset 1t
# A player used the Edit activation distance button
execute as @a[scores={ts.sa.distance=-50..}] at @s run function spawnanimations:settings/custom_distance
