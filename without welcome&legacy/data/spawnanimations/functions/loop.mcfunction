## by Tschipcraft


## General
effect give @e[tag=to_spa_a_verify] invisibility 1 0 true
execute store result score Global spa_a_count if entity @e[type=minecraft:area_effect_cloud,tag=s_a_p]


schedule function spawnanimations:loop 5t
