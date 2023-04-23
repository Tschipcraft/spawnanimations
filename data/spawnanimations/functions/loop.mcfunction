## by Tschipcraft

## General
effect give @e[tag=ts.sa.to_verify,tag=!smithed.strict,tag=!ignore.global] invisibility 1 0 true
execute store result score $global ts.sa.count if entity @e[type=minecraft:area_effect_cloud,tag=ts.sa.p]

## Menu
scoreboard players enable @a tschipcraft.menu
#scoreboard players add @a ts.sa.welcome 0 - don't show menu on first boot

schedule function spawnanimations:loop 5t
